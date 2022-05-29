package com.edonald.member.dto;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class AuthenticationCodeDto {
	public int code;
	public String user_email;
	public String type;
	public Timestamp date;
}
