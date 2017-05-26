package com.myblog.controller.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class UsersDateConverter implements Converter<String, Date>  {
	@Override
	public Date convert(String source) {
		// TODO Auto-generated method stub
		//事项将日期串转换为日期类型"yyyy-MM-dd HH:mm:ss"
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			return sdf.parse(source);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//绑定失败 返回空
		return null;
	}
}
