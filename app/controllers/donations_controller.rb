class DonationsController < ApplicationController
  def index
  end

  def new
    @donation = UserDonation.new   #「UserDonation」に編集
  end

  def create
    @donation = UserDonation.new(donation_params)   #「UserDonation」に編集
  end

  private

  def donation_params
    params.require(:user).permit(:name, :name_reading, :nickname)
  end
end
