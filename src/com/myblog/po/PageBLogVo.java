package com.myblog.po;

import java.util.List;

public class PageBLogVo {
	private List<String> labelList;
	private List<Blog> blogList;
	private List<Blog> recentList;
	private List<Blog> relatedList;
	
	
	public List<String> getLabelList() {
		return labelList;
	}
	public void setLabelList(List<String> labelList) {
		this.labelList = labelList;
	}
	public List<Blog> getBlogList() {
		return blogList;
	}
	public void setBlogList(List<Blog> blogList) {
		this.blogList = blogList;
	}
	public List<Blog> getRecentList() {
		return recentList;
	}
	public void setRecentList(List<Blog> recentList) {
		this.recentList = recentList;
	}
	public List<Blog> getRelatedList() {
		return relatedList;
	}
	public void setRelatedList(List<Blog> relatedList) {
		this.relatedList = relatedList;
	}

	
	

}
