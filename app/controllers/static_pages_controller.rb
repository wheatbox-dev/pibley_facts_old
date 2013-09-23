class StaticPagesController < ApplicationController
  def home
    @facts = Fact.paginate(page: params[:page])
    @fact = Fact.new
  end
end
