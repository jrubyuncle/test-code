class PagesController < ApplicationController

def home
  render 'pages/home'
end

def about
  render 'pages/about'
  #render 'profiles/me.html'
end

def me
  #render 'pages/about'
  render 'profiles/me.html'
end

end