package com.myblog.po;

import java.sql.Timestamp;
import java.util.Date;

public class Blog  {
    private Integer bid;

    private String title;

    private String author;

    private String label;

    private Date create_time;

    private Date alter_time;

    private Integer state;

    private Long support;

    private String description;

    private String content;
    
    private User user;

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getAlter_time() {
		return alter_time;
	}

	public void setAlter_time(Date alter_time) {
		this.alter_time = alter_time;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Long getSupport() {
		return support;
	}

	public void setSupport(Long support) {
		this.support = support;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

   
}