class ContentController < ApplicationController
  require 'csv'
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
    city = City.new(:name=>params[:name], :country_id=>params[:country_id], :best_time_of_visit=>params[:best_time_of_visit], :weather=>params[:weather], :other_info=>params[:other_info], :for_months=>params[:months])
    if city.save
      flash[:notice]="Successfully saved!"
    else
      flash[:error]="Could not save! Reason : " + city.errors.full_messages.join(' | ')
    end
    redirect_to :back
  end


  def delete_city_or_country
    object=params[:type].constantize.find_by_id(params[:id])
    if object.blank?
      flash[:error]="ID not found for type #{params[:type]}"
    else
      object.delete
      flash[:notice]="Saved deleted!"
    end
    redirect_to :back
  end

  def download_locations
    city_data=City.all(:include=>:country)
    csv_file=CSV.generate do |csv|
      csv << ["CityID", "CityName", "Weather", "Best Time To Visit", "Other Info", "Country Name", "CountryId", "Continent"]
      city_data.each do |item|
        csv << [item.id, item.name, item.weather, item.best_time_of_visit, item.other_info, item.country.name, item.country.id, item.country.continent]
      end
    end
    filename="LocationsDumpAt"+ Time.now.to_s
    send_data csv_file, :type => 'text/csv; charset=iso-8859-1; header=present', :disposition => "attachment;filename=#{filename}.csv"
  end

  def upload_attractions_csv
    if params[:data_file].blank?
      flash[:error]="Please upload file."
      redirect_to :back
      return
    end
    upload_file = File.open(params[:data_file].path, 'r')
    csv_data=CSV.parse(upload_file, :headers => true)
    Rails.logger.debug csv_data.headers
    if (Attraction.headers-csv_data.headers).present?
      flash[:error]="Headers are incorrect. Please see instructions below."
      redirect_to :back
      return
    end
    begin
      csv_data.each do |row|
        city=City.find_by_name(row['city_name'])
        raise Exception, "City Name #{row['city_name']} is incorrect." if city.blank?
        attraction = Attraction.new(:city_id=>city.id, :name=> row['name'], :price => row['price'], :start_time=>row['start_time'], :end_time=>row['end_time'],:closed_on=>row['closed_on'], :other_details=>row['other_details'], :rating=>row['rating'], :must_do=>row['must_do'])
        unless attraction.save
          raise Exception, attraction.errors.full_messages.join(',')
        end
      end
      flash[:notice]="Successfully Uploaded!"
      redirect_to :back
    rescue Exception=>e
      flash[:error]="Could not upload! Reason: "+e.message
      redirect_to :back
      raise ActiveRecord::Rollback
    end
  end

end