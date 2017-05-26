package com.myblog.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.myblog.mapper.BlogMapper;
import com.myblog.po.Blog;
import com.myblog.po.BlogCustom;
import com.myblog.po.PageBLogVo;
import com.myblog.service.BlogService;

public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogMapper blogMapper;
	@Override
	public List<Blog> findAllBlogs() throws Exception {
		List<Blog> list = blogMapper.findAllBlogs();
		return list;
	}
	@Override
	public Blog findBlogByTid(int bid) throws Exception {
		return blogMapper.findBlogByTid(bid);
	}
	@Override
	public PageBLogVo findPageBLogVo() throws Exception {
		PageBLogVo pbv = new PageBLogVo(); 
		pbv.setBlogList(blogMapper.findAllBlogs());
		pbv.setLabelList(blogMapper.findLabels());
		pbv.setRecentList(blogMapper.findRecentBlogs());
		/*pbv.setRelatedList(blogMapper.findRelatedBlogs());*/
		return pbv;
	}
	@Override
	public void insertBlog(BlogCustom blogCustom) throws Exception {
		blogMapper.insertBlog(blogCustom);
	}
	@Override
	public List<Blog> findBlogsByTitle(String title) throws Exception {
		List<Blog> list = blogMapper.findBlogsByTitle(title);
		
		return list;
	}
	@Override
	public void updateBlog(Blog blog) throws Exception {
		
		blogMapper.updateBlog(blog);
		
	}
	@Override
	public void deleteBlog(int bid) throws Exception {
		
		blogMapper.deleteBlog(bid);
	}
	@Override
	public List<Blog> findBlogsByLabel(String label) throws Exception {
		// TODO Auto-generated method stub
		return blogMapper.findBlogsByLabel(label);
	}
	@Override
	public List<Blog> findSXByLabel(int bid) throws Exception {
		List<Blog> list = new ArrayList<Blog>();
		list.add(blogMapper.findLastdBlog(bid));
		list.add(blogMapper.findBlogByTid(bid));
		list.add(blogMapper.findNextdBlog(bid));
		return list;
	}
	

}
