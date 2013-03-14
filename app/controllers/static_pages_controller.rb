class StaticPagesController < ApplicationController
  def home
  end

  def inflection
  end

  def resume
  end

  def bio
  end

  def portfolio
    @target = params[:target]
    params.delete(:target)
  end

  def video_process_flow
  end
end
