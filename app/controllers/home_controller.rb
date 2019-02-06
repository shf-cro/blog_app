class HomeController < ApplicationController
  def index
    @new = Content.all.maximum(:id)
    @techs = Content.where(kind: 1).first(3)
    @books = Content.where(kind: 2).first(3)
  end
  def book
    @books = Content.where(kind: 2)
  end
  def technology
    @techs = Content.where(kind: 1)
  end
  def detail
    @content = Content.find(params[:id])
  end
  def administrator
  end
end