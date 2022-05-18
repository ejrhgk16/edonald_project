package com.edonald.order.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.order.dao.OrderMapper;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;
import com.edonald.order.dto.PayInfoDto;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import lombok.Getter;

@Service
public class OrderServiceImpl implements OrderService {

	private String impKey = "8351377980505138";
	private String impSecret = "0cb3cc71e2e0148ad416bd7ea0010a9ff44b51f02bcb1fb67cc940d611439f08c4a980888540ad6d";

	@Autowired
	private OrderMapper orderMapper;

	@Getter
	private class Response {
		private PayAmountIfno response;
	}																								//<<<json이 이구조로 들어옴
	@Getter
	private class PayAmountIfno {
		private int amount;
	}

	@Override
	public int calcPriceBurger(CartDto dto) {

		int price = dto.getCart_product_price();
		String comp_type = dto.getComp_type();
		System.out.println("ct  -- " + comp_type);
		System.out.println("comp1 -- " + dto.getComp1_name());
		int qty = dto.getCart_product_quant();

		if (comp_type.equals("set")) {
			price += 1700;
		}
		if (comp_type.equals("large_set")) {
			price += 2300;
		}
		return price * qty;
	}

	@Override
	public String createOrderNum(String user_phone) {
		Random rnd = new Random();
		String num = "";
		Date date = new Date();
		long timeInMilliSeconds = date.getTime();
		java.sql.Date today = new java.sql.Date(timeInMilliSeconds);
		String orderDate = String.valueOf(today);
		orderDate = orderDate.replace("-", "");
		num += orderDate;

		OrderNumDto orderNumDto = new OrderNumDto();
		orderNumDto.setOrder_date(today);
		orderNumDto.setUser_phone(user_phone);
		while (true) {
			for (int i = 0; i < 5; i++) {
				if (rnd.nextBoolean()) {
					num += (char) ((int) (rnd.nextInt(26)) + 97);
				} else {
					num += (rnd.nextInt(10));
				}
			}
			orderNumDto.setOrder_num(num);
			if (orderMapper.checkOrderNum(num) == null) {
				orderMapper.insertOrderNum(orderNumDto);
				break;
			}
		}
		return num;
	}

	@Override
	public String getToken() throws IOException {
		HttpsURLConnection conn = null;

		URL url = new URL("https://api.iamport.kr/users/getToken");
		conn = (HttpsURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);

		JsonObject json = new JsonObject();
		json.addProperty("imp_key", impKey);
		json.addProperty("imp_secret", impSecret);

		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(json.toString());
		bw.flush();
		bw.close();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		Gson gson = new Gson();

		String response = gson.fromJson(br.readLine(), Map.class).get("response").toString();
		System.out.println(response);
		String token = gson.fromJson(response, Map.class).get("access_token").toString();
		br.close();
		conn.disconnect();

		return token;
	}

	@Override
	public int paymentInfo(String imp_uid, String access_token) throws IOException {
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/payments/" + imp_uid);
		conn = (HttpsURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", access_token);
		conn.setDoOutput(true);

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		Gson gson = new Gson();
		Response response = gson.fromJson(br.readLine(), Response.class);
		br.close();
		conn.disconnect();
		return response.getResponse().getAmount();
	}

	@Override
	public void payMentCancle(String access_token, String imp_uid, int amount, String reason) throws IOException {
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/payments/cancel");
 
		conn = (HttpsURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setRequestProperty("Authorization", access_token);
		conn.setDoOutput(true);
	
		JsonObject json = new JsonObject();
		json.addProperty("reason", reason);
		json.addProperty("imp_uid", imp_uid);
		json.addProperty("amount", amount);
		json.addProperty("checksum", amount);
 
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(json.toString());
		bw.flush();
		bw.close();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		br.close();
		conn.disconnect();
	}

	@Override
	public OrderNumDto orderNumCheck(String merchanuid) {
		OrderNumDto dto = orderMapper.checkOrderNum(merchanuid);
		return dto;
	}

	@Override
	public void orderComplete(OrderListDto dto) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		// SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss"); >> string으로 변환해줌 select할 때 사용하면될 듯
		OrderListDto orderListDto = dto;
		orderListDto.setOrder_date(timestamp);
		List<CartDto>cartList = orderListDto.getCartList();
		for(CartDto cart : cartList) {
			cart.setMerchanuid(orderListDto.getMerchanuid());
			orderMapper.insertCartInfo(cart);
		}
		orderMapper.insertOrderInfo(orderListDto);
	}

	@Override
	public OrderListDto getOrderInfo(String merchanuid) {
		OrderListDto orderListDto = orderMapper.getOrderInfoByUid(merchanuid);
		List<CartDto> cartList = orderMapper.getCartListByUid(merchanuid);
		orderListDto.setCartList(cartList);
		return orderListDto;
	}
	


}
