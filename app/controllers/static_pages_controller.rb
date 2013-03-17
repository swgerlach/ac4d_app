class StaticPagesController < ApplicationController
  before_filter do
    headers['Cache-Control'] = 'public; max-age=86400'
  end

  caches_page :home, :inflection, :resume, :bio

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

end
