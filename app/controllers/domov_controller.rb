class DomovController < ApplicationController
  def blogs
  	@blogs = Blog.last(10).reverse
  end

  def projects
  	@projects = Project.all.reverse
  	@works = Work.all.reverse
  end


  def show
    @blogs = Blog.all.reverse
  end


end
