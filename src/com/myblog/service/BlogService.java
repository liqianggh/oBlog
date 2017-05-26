package com.myblog.service;

import java.util.List;

import com.myblog.po.Blog;
import com.myblog.po.BlogCustom;
import com.myblog.po.PageBLogVo;

public interface BlogService {
	public List<Blog> findAllBlogs()throws Exception;

	public Blog findBlogByTid(int bid)throws Exception;
	
	public PageBLogVo findPageBLogVo( )throws Exception;
	
	public void insertBlog(BlogCustom blogCustom)throws Exception;
	
	public List<Blog> findBlogsByTitle(String title)throws Exception;
	
	public void updateBlog(Blog blog )throws Exception;
	
	public void deleteBlog(int bid) throws Exception;
	public List<Blog> findBlogsByLabel(String label)throws Exception;
	
	
	public List<Blog> findSXByLabel(int bid)throws Exception;
}
