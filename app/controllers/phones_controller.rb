class PhonesController < ApplicationController
	
	def show
		render :json => Phone.all.pluck(:number)
	end

	def get_phone
		create_number
		@phone = Phone.create(number: @number, status: "ordinal", used: true)
		render :json => @phone.number
	end

	def custom_phone
		@phone = Phone.create(number: params["number"], status: "custom", used: true)
			if @phone.save
			render :json => @number
		else
			render :json => "error"
		end
	end

	private

	def create_number
		phone = Phone.where(status: "ordinal").last
		if phone.nil?
			@number = 1111111111
		else
			@number = phone.number + 1
			check_number(@number) ? @number +=1 : @number
		end
	end

	def check_number(number)
		if Phone.find_by_number(number).present?
			true
		else
			false
		end
	end
end
