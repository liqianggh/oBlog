package com.myblog.po;

public class BlogPo {

		private Blog thisBlog;
	 	private Blog lastBlog;
	 	private Blog nextBlog;
		public Blog getLastBlog() {
			return lastBlog;
		}
		public void setLastBlog(Blog lastBlog) {
			this.lastBlog = lastBlog;
		}
		public Blog getNextBlog() {
			return nextBlog;
		}
		public void setNextBlog(Blog nextBlog) {
			this.nextBlog = nextBlog;
		}
	 	
	 	
}
