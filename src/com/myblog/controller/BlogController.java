package com.myblog.controller;


import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myblog.po.Blog;
import com.myblog.po.BlogCustom;
import com.myblog.po.PageBLogVo;
import com.myblog.po.User;
import com.myblog.service.BlogService;

@Controller
public class BlogController {

	@Autowired
	BlogService blogService;
	
	//跳转到首页
	@RequestMapping("/index.action")
	public String toIndex(HttpServletRequest request)throws Exception{
 
		Integer counts = (Integer) request.getSession().getAttribute("count");
		Integer count = 0;
		if(counts==null){
			Properties properties = new Properties();
			InputStream  input = this.getClass().getClassLoader().getResourceAsStream("/count.properties");
			properties.load(input);
			count = Integer.parseInt(properties.getProperty("count"));
			count++;
			properties.setProperty("count", count.toString());
			// this.getClass().getResource("/count.properties") 
			//file:/D:/develop/tomcat7/webapps/Blogs/WEB-INF/classes/count.properties
	 		//url.getPath() /D:/develop/tomcat7/webapps/Blogs/WEB-INF/classes/count.properties

			URL url = this.getClass().getResource("/count.properties");
 			properties.store(new FileOutputStream(url.getPath()), Calendar.getInstance().toString());
			input.close();
			request.getSession().setAttribute("count", count);
		}
		
		List<Blog> list =blogService.findAllBlogs();
		request.getSession().setAttribute("list", list);
		return "index";
	}
	
	//查看一个博客
	@RequestMapping(value="/single.action",method={RequestMethod.POST,RequestMethod.GET})
	public String toSingle(Integer bid,HttpServletRequest request)throws Exception{
		List<Blog> blogList = blogService.findSXByLabel(bid);
		request.setAttribute("blogList", blogList);
		
		return "single";
	}
	//跳转到添加博客页面
	@RequestMapping(value="/toWrite.action",method={RequestMethod.POST,RequestMethod.GET})
	public String toWrite()throws Exception{
		return "write";
	}
	//添加博客提交
	@RequestMapping(value="/addBlogs.action",method={RequestMethod.POST})
	public ModelAndView addBlog(BlogCustom blog,HttpServletRequest request)throws Exception{
		 User user = (User) request.getSession().getAttribute("user");
		blog.setAuthor(user.getPseudonym());
		 blog.setUid(user.getUser_id());
		blogService.insertBlog(blog);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:index.action");
		return modelAndView;
	}
	
	//删除博客
	@RequestMapping(value="/deleteBlog.action", method={RequestMethod.POST})
	public ModelAndView deleteBlog(Blog blog )throws Exception{
		int bid = blog.getBid();
		blogService.deleteBlog(bid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:index.action");
		return modelAndView;
		
	}
	
	
	//通过title查询blogs
	@RequestMapping(value="/searchBlogs.action",method={RequestMethod.POST})
	public ModelAndView  searchBlogs(String title )throws Exception{
		List<Blog> list = blogService.findBlogsByTitle(title);
		ModelAndView modelAndView = new ModelAndView();
		PageBLogVo pbv = blogService.findPageBLogVo();
		pbv.setBlogList(list);
		modelAndView.addObject("pageBlogVo", pbv);
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
	//通过label查询blogs
	@RequestMapping(value="/findBlogsByLabel.action",method={RequestMethod.GET,RequestMethod.POST} )
	public ModelAndView findBlogsByLabel(String label ,HttpSession session)throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		PageBLogVo pbv = (PageBLogVo) session.getAttribute("pageBlogVo");
		pbv.setBlogList(blogService.findBlogsByLabel(label));
		modelAndView.setViewName("index");
		modelAndView.addObject("pageBlogVo", pbv);
		return modelAndView;
	}
	
	
	//修改博客
	@RequestMapping(value="/editBlog.action")
	public ModelAndView editBlog(int bid)throws Exception{
		Blog blog  = blogService.findBlogByTid(bid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("blog", blog);
		modelAndView.setViewName("modify");
		return modelAndView;
		
	}
	//提交修改
	@RequestMapping("/editBlogSubmit.action")
	public ModelAndView editBlogSubmit(Blog blog)throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		Blog oBlog = blogService.findBlogByTid(blog.getBid());
		oBlog.setLabel(blog.getLabel());
		oBlog.setTitle(blog.getTitle());
		oBlog.setContent(blog.getContent());
		blogService.updateBlog(oBlog);
		modelAndView.addObject("blog", oBlog);
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
}
