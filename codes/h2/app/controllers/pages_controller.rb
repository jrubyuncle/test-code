class PagesController < ApplicationController
  
  # globally set layout
  #layout 'admin'

  def home
  end

  def about
  end

  def lottery
    @balls = (1..48).to_a.sample(6)
  end

  def about
    @name = params[:nickname]

    #
    render layout: 'admin'
  end

  def form3_do
    weight = params[:weight].to_f
    height = params[:height].to_f
    @bmi = weight / height ** 2

    @name = params[:name]
  end

end
