class UserController < ApplicationController
  def index
  end

  def new
    session[:user_params] ||= {}
    @user = User.new
  end

  def create
    session[:user_params].deep_merge!(params[:user].to_unsafe_h) if params[:user]
    @user = User.new(session[:user_params])
    @user.current_step = session[:user_step]
    puts @user.current_step
    puts @user.current_step
    puts @user.current_step
    puts @user.current_step
    puts @user.current_step
    puts session[:user_params]
    puts session[:user_params]
    puts session[:user_params]
    puts session[:user_params]
    if @user.last_step?
      @user.save
    else
      @user.next_step
    end
    session[:user_step] = @user.current_step
    if @user.new_record?
      render 'new'
    else
      session[:user_step] = session[:user_params] = nil
      flash[:sucess] = 'Thanks to fill your info, you will get an email with your discount code soon.'
      redirect_to '/newsletter/new'
    end
  end

  private

  def user_params
    params.require
  end
end
