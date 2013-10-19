class AdminController < ApplicationController
before_filter :authenticate_user!
  def index
    @blogs = Blog.all.reverse
  end



  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
  # GET /blogs/new

 
  # GET /blogs/1/edit
  def edit
  end

  def errors
  end  
  # POST /blogs
  # POST /blogs.json


  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to admin_url }
      format.json { head :no_content }
    end
  end

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @admin, notice: 'Blog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blog }
      else
        format.html { render action: 'admin#index' }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end  

end

