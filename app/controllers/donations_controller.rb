class DonationsController < ApplicationController
  def index
  end

  def new
    @donation = User.new
  end

  def create
    @donation = User.new(donation_params)
  end

  private

  def donation_params
    params.require(:user).permit(:name, :name_reading, :nickname)
  end
end
