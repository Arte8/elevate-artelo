class TipsController < ApplicationController
  def index
    @tip = Tip.new
    @tips = Tip.all
    @pizza = "cheese"
    # index page var
  end

  def new
    @tip = Tip.new
    # new page
  end

  def create
    @tip = Tip.create(tip_params)
    if @tip.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

    
  end
  
  private
# ^^^^^^^^^^^^^^^^^^^^^^^^
  def tip_params
    params.require(:tip).permit(:lesson, :translation)
  end


end
