class HomeController < ApplicationController
  def index
    @blogs = Blog.where('published < ?', Time.current )
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def about
  end

  def contact
  end
end
