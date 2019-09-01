class StaticPagesController < ApplicationController
  def home
    get '/static_pages/contact', to: 'controller#method'
  end
end
