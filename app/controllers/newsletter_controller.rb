class NewsletterController < ApplicationController
  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      NewsletterMailer.newsletter_created.deliver_now
      flash[:success] = t('flash.success')
      redirect_to user_index_path
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
