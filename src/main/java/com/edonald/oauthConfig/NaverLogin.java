package com.edonald.oauthConfig;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.oauth.OAuth20Service;


public class NaverLogin {
    private final static String CLIENT_ID = "DXUoYUTnxjQh2eIbHQ30";
    private final static String CLIENT_SECRET = "9ADIoX1_n_";
    private final static String REDIRECT_URI = "http://localhost:8080/ed/naverCallback";
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
}
