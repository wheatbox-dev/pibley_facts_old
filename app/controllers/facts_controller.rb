class FactsController < ApplicationController
  def new
  end

  def create
    @fact = Fact.new(params[:fact])
    if @fact.save
      flash[:success] = "Thank you for submitting a Pibley Fact!"
      redirect_to root_path
    else
      flash[:failure] = "Your Pibley Fact was not submitted."
      redirect_to root_path
    end
  end
end
