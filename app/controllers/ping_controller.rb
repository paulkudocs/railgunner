class PingController < ApplicationController
    before_action :authenticate_user!, only: [:auth] 
    # Get /ping
  def index
    render body: nil, status:200
  end 

  # Get /ping/auth 
  def auth 
    render body: nil, status:200
  end  

  def create 
    render body: nil, status:200
  end

end