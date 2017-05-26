package com.myblog.po;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class User {
    private Integer user_id;
    private String username;

    private String password;

    private String question;

    private String answer;

    private Calendar regist_time;

    private String user_img;
    
    private String pseudonym;//笔名
    public String getPseudonym() {
		return pseudonym;
	}

	public void setPseudonym(String pseudonym) {
		this.pseudonym = pseudonym;
	}

	private List<Blog> blogList = new ArrayList<Blog>();

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
 

	public Calendar getRegist_time() {
		return regist_time;
	}

	public void setRegist_time(Calendar regist_time) {
		this.regist_time = regist_time;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public List<Blog> getBlogList() {
		return blogList;
	}

	public void setBlogList(List<Blog> blogList) {
		this.blogList = blogList;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username
				+ ", password=" + password + ", question=" + question
				+ ", answer=" + answer + ", regist_time=" + regist_time
				+ ", user_img=" + user_img + ", blogList=" + blogList + "]";
	}

  
}