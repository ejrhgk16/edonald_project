package com.edonald.s3;

import java.io.File;

import com.amazonaws.services.s3.transfer.Upload;

public class S3UploadTest {

		public AwsS3 s3 = AwsS3.getInstance();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		S3UploadTest sa3 = new S3UploadTest();
		File file = new File("C:\\uploadtest.png");
		String key = "uploadtest123";
		sa3.upload(file, key);
		System.out.println("upload .............");
		
		
	}
	public void upload(File file, String key) {
		s3.upload(file, key);
	}

}
