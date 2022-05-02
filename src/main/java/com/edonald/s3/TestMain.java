package com.edonald.s3;

import java.io.File;

public class TestMain {
	public AwsS3 awsS3 = AwsS3.getInstance();
	//테스트 클래스 입니다.
	public static void main(String[] args) {
		
		TestMain main = new TestMain();
		
		File file = new File("C:\\Users\\HP\\Documents\\예스.png");
		String key = "img/예스.png";
		
		main.upload(file,key);
	}
	
	public void upload(File file, String key) {
		awsS3.upload(file,key);
	}
}
