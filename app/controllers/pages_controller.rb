class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @optier = Player.where(rank: "OP")
    @stier = Player.where(rank: "S")
    @atier = Player.where(rank: "A")
    @btier = Player.where(rank: "B")
    @ctier = Player.where(rank: "C")
    @dtier = Player.where(rank: "D")
  end
end
