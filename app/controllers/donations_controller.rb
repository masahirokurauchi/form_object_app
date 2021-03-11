class DonationsController < ApplicationController
  def index
  end

  def new
    @donation = UserDonation.new
  end

  def create
    @donation = UserDonation.new(donation_params)

    if @donation.valid?
      @donation.save  # バリデーションをクリアした時
      
      flash[:notice] = 'フォームが送信されました'
      return redirect_to root_path
    else
      render "new"    # バリデーションに弾かれ時
    end
  end

  private

  def donation_params
    params.require(:user_donation).permit(:name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price)
 end
end
