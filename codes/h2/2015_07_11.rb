https://github.com/jrubyuncle/test.git

#
# p4-64
#

# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end

#
<!-- app/views/posts/index.html.erb -->

<h1>List Posts</h1>

<ul>
  <% @posts.each do |post| %>
  <li><%= link_to post, post_path(post.id) %></li>
  <% end %>
</ul>

#
<!-- app/views/posts/show.html.erb -->
<h1><%= @post.title %></h1>
<hr>
<p><%= @post.content %></p>

<%= link_to 'Back', posts_path %>


#
# p4-59
#

# app/models/post.rb
class Post < ActiveRecord::Base
  validates :title, presence: true, format: {with: /\A\d/}
  before_save :upcase_all
  before_create :generate_content

protected

  def upcase_all
    title.try(:upcase!)
    content.try(:upcase!)
  end

  def generate_content
    self.content = title if content.blank?
  end
end


#
# p4-52 answer
# /\A[0-9]/
# /\A\d/
#

# app/models/post.rb
class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :title, format: {with: /\A\d/} 
end

# to test
Post.new(title: '').valid?
Post.new(title: 'asdf').valid?
Post.new(title: '123adsf').valid?


#
# p4-27
#
http://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/Table.html

#
# class summary from teacher
#
layout
partial
helper
  form helper
  url helper
  ....
  view helper
    link_to
    image_tag
    tag
    content_tag
rails g assets NAME
rails g helper NAME
<%=  %>
<%#  %>
<%   %>

<% 10.times do %>
<h1></h1>
<% end %>

#
# p3-87 pass optional hash to nav_li
#
module ApplicationHelper
  def nav_li text, url, options = {}
    content_tag :li, link_to(text, url, options)
  end
end

#
#
#
http://stackoverflow.com/questions/13797389/utf8-post-parameter-on-gmail-login-contains-a-snowman-character

#
# 1. in controller
#
def about
  @name = params[:nickname]
  @bmi = params[:w].to_f/params[:h].to_f**2
end

#
# 2. form
#
<%= form_tag '/about' do %>
  <input type="text" name="nickname" placeholder="Nickname">
  <input type="text" name="w" placeholder="Weight">
  <input type="text" name="h" placeholder="Height">
  <input type="submit">
<% end %>

#
# 3. view
#
<h1>Pages#about</h1>
<h2>Name: <%= @name %></h2>
<h3>BMI: <%= @bmi %></h3>


#
# use each_with_index
#
<h1>Lottery</h1>
<ul>
  <% (1..42).to_a.sample(6).each_with_index do |num, i| %>
    <li>Ball no. <%= i + 1 %>: <%= num %></li>
  <% end %>
</ul>
