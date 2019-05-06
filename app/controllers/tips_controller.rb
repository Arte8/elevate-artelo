class TipsController < ApplicationController
  def index
    @tip = Tip.new
    @tips = Tip.all
    @pizza = "cheese"
  end

  def new
    @tip = Tip.new
  end
end
