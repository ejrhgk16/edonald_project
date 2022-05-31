package com.edonald.oauthConfig;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

@Component
public class NaverLogin {
    private final static String CLIENT_ID = "DXUoYUTnxjQh2eIbHQ30";
    private final static String CLIENT_SECRET = "9ADIoX1_n_";
    private final static String REDIRECT_URI = "http://ec2-3-34-182-115.ap-northeast-2.compute.amazonaws.com/ed/naverCallback";
    private final static String SESSION_STATE = "oauth_state";
    /* 프로필 조회 API URL */
    private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
    
    public String getAuthorizationUrl(HttpSession session) {
        /* 세션 유효성 검증을 위하여 난수를 생성 */
        String state = UUID.randomUUID().toString();
        /* 생성한 난수 값을 session에 저장 */
        session.setAttribute(SESSION_STATE, state);
        /* Scribe에서 제공하는 인증 URL 생성 기능을 이용하여 네아로 인증 URL 생성 */
        OAuth20Service oauthService = new ServiceBuilder()
        		.apiKey(CLIENT_ID)
        		.apiSecret(CLIENT_SECRET)
        		.callback(REDIRECT_URI)
        		.state(state)
        		.build(NaverLoginApi.instance());	
        return oauthService.getAuthorizationUrl();
    }
   
    public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{
    	String sessionState = (String)session.getAttribute(SESSION_STATE);
    	 if (StringUtils.pathEquals(sessionState, state)) {
    		 OAuth20Service oauthService = new ServiceBuilder().apiKey(CLIENT_ID).apiSecret(CLIENT_SECRET)
                     .callback(REDIRECT_URI).state(state).build(NaverLoginApi.instance());
    		  OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
              return accessToken;
    	 }
    	 return null;
    }
    
    //Access Token을 이용하여 네이버 사용자 프로필 호출
    public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException {
        OAuth20Service oauthService = new ServiceBuilder().apiKey(CLIENT_ID).apiSecret(CLIENT_SECRET)
                .callback(REDIRECT_URI).build(NaverLoginApi.instance());
        OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
        oauthService.signRequest(oauthToken, request);
        Response response = request.send();
        return response.getBody();
    }
    
    
    
}
