class DomovController < ApplicationController
  def blogs
  	@blogs = Blog.last(10).reverse
  end
end
