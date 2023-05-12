class NewsletterController < ApplicationController
  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      flash[:success] = 'You were successfully added to ours newletter =D'
      redirect_to '/newsletter/new'
    else
      flash[:error] = @newsletter.errors.full_messages
      redirect_to '/newsletter/new'
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:email, fashion_interest: [])
  end
end
