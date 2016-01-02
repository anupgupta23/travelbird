class ContentController < ApplicationController

  def save_country
    country = Country.new(:continent=>params[:continent], :name=>params[:name])
    if country.save
      flash[:notice]="Successfully saved!"
    else
      flash[:error]="Could not save! Reason : " + country.errors.full_messages.join(' | ')
    end
    redirect_to :back
  end

  def save_city
    city = City.new(:name=>params[:name], :country_id=>params[:country_id])
    p_a=params[:places_and_attractions]
    city.places_and_attractions=p_a.split('|') if p_a.present?
    if city.save
      flash[:notice]="Successfully saved!"
    else
      flash[:error]="Could not save! Reason : " + city.errors.full_messages.join(' | ')
    end
    redirect_to :back
  end

  def save_hotel
    hotel = Hotel.new(:name=>params[:name], :ratings=>params[:ratings], :details=>params[:details])
    if hotel.save
      flash[:notice]="Successfully saved!"
    else
      flash[:error]="Could not save! Reason : " + hotel.errors.full_messages.join(' | ')
    end
    redirect_to :back
  end


end