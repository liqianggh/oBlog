package com.myblog.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.myblog.po.Blog;
import com.myblog.po.BlogCustom;

public interface BlogMapper {
   public List<Blog> findAllBlogs()throws Exception;

   public Blog findBlogByTid(int bid)throws Exception;
   
   public List<Blog> findRecentBlogs()throws Exception;
   
   public List<Blog> findRelatedBlogs()throws Exception;
   
   public List<String> findLabels()throws Exception;
   
   public void insertBlog(BlogCustom blogCustom)throws Exception; 
   
   public List<Blog> findBlogsByTitle(String title)throws Exception;
   
   public void updateBlog(Blog blog)throws Exception;
   public void deleteBlog(int bid)throws Exception;
   
   public List<Blog> findBlogsByLabel(String label) throws Exception;
   
   public Blog findLastdBlog(int bid)throws Exception;
   public Blog findNextdBlog(int bid)throws Exception;


}