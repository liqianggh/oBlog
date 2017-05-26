package com.myblog.controller;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;


public class texts {
	public static void main(String[] args) throws IOException {
		InputStream inStream = Object.class.getResourceAsStream("/count.properties");
		Properties  prop = new Properties();
		prop.load(inStream);
		int count =  Integer.parseInt((String) prop.get("count"));
		System.out.println(count);
	}

}
