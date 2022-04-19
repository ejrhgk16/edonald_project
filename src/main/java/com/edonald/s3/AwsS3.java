package com.edonald.s3;

import java.io.File;
import java.io.InputStream;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class AwsS3 {
	private AmazonS3 s3Client;
	final private String accessKey = "AKIA4D6LFMKRSWEPKBP7";
	final private String secretKey = "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";
	private Regions clientRegion = Regions.AP_NORTHEAST_2;
	private String bucket = "edonaldfile";	

	private AwsS3() {
		createS3Client();
	}

	static private AwsS3 instance = null;

	public static AwsS3 getInstance() {
		if (instance == null) {
			return new AwsS3();
		} else {
			return instance;
		}
	}

	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		this.s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials))
				.withRegion(clientRegion).build();

	}
	
	public void upload(File file, String key) {
		uploadToS3(new PutObjectRequest(this.bucket, key, file));
		
	}

	//multipartFile »ç¿ë½Ã
	public void upload(InputStream is, String key, String contentType, long contentLength) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);

		uploadToS3(new PutObjectRequest(this.bucket, key, is, objectMetadata));
	}

	public void uploadToS3(PutObjectRequest putObjectRequest) {
		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println("uploadcomplete : " + putObjectRequest.getKey());
		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
