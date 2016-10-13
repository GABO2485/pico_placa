class PredictPicoyPlaca
	attr_reader :plate, :date, :time
	def plate_typed_by_user plate
		if plate.length == 6
			last_digit_of_plate = plate.reverse![0].chr
			if last_digit_of_plate == "0"
				last_digit_of_plate = 10
			end 
			case last_digit_of_plate.to_i
				when 1..2 then day_according_to_last_digit_plate =  "monday"
				when 3..4 then day_according_to_last_digit_plate =  "tuesday"
				when 5..6 then day_according_to_last_digit_plate =  "wednesday"
				when 7..8 then day_according_to_last_digit_plate =  "thursday"
				when 9..10 then day_according_to_last_digit_plate =  "friday"
			end
		else
			print "wrong plate ..... :("+"\n"
			exit
			
		end 		
	end

	def date_typed_by_user date
		day_typed_by_user = date.reverse![0].chr + date[1].chr
		month_typed_by_user = date.reverse![0] + date[1] + date[2]
		if day_typed_by_user.reverse!.to_i <= 31
			case month_typed_by_user
				when "jan" then month_typed_by_user_in_numbes = 0
				when "feb" then month_typed_by_user_in_numbes = 2
				when "mar" then month_typed_by_user_in_numbes = 3
				when "apr" then month_typed_by_user_in_numbes = 6
				when "may" then month_typed_by_user_in_numbes = 1
				when "jun" then month_typed_by_user_in_numbes = 4
				when "jul" then month_typed_by_user_in_numbes = 6
				when "aug" then month_typed_by_user_in_numbes = 2
				when "sep" then month_typed_by_user_in_numbes = 5
				when "oct" then month_typed_by_user_in_numbes = 0
				when "nov" then month_typed_by_user_in_numbes = 3
				when "dec" then month_typed_by_user_in_numbes = 5			
			end
			day_calculated = (6 + day_typed_by_user.to_i + month_typed_by_user_in_numbes) % 7
			
		else
			print "wrong date ..... :("+"\n"
			exit
		end
	end

	def time_typed_by_user time
		time_to_check = ""
		time.each_char do |time_digits|
			if time_digits != ":"
				time_to_check +=  time_digits.to_str
			end
		end 
		time_to_check.to_i
	end
end
def inicio()	
	print "***************PICO Y PLACA PREDICTOR*********************" + "\n"*3
	print "Hello, type your car's plate: "
	plate_of_my_car = gets.chomp
	print  "Type a date (ex. january 17): "
	date_to_check_pico_y_placa = gets.chomp
	print  "Type a time (ex. 15:45): "
	time_to_check_pico_y_placa = gets.chomp
	pico_y_placa_object = PredictPicoyPlaca.new()
	variable_for_plate = pico_y_placa_object.plate_typed_by_user(plate_of_my_car)
	variavle_for_date = pico_y_placa_object.date_typed_by_user(date_to_check_pico_y_placa)
	variable_for_time = pico_y_placa_object.time_typed_by_user(time_to_check_pico_y_placa)
	if variavle_for_date.to_s != "2" and variable_for_plate == "monday" and variavle_for_date.to_s != "0" and variavle_for_date.to_s != "1"
		print "yes you can drive"
	elsif variavle_for_date.to_s == "2" and variable_for_plate == "monday" 
		if (variable_for_time.to_s >= "700" and variable_for_time.to_s <= "930") or
		   (variable_for_time.to_s >= "1600" and variable_for_time.to_s <= "1930")
		    print "NO...you can't drive your car at this time :("
		else
			print "YESS....You are able to drive your car today at this time:)"
		end 		
	end

	if variavle_for_date.to_s != "3" and variable_for_plate == "tuesday" and variavle_for_date.to_s != "0" and variavle_for_date.to_s != "1"
		print "yes you can drive"
	elsif variavle_for_date.to_s == "3" and variable_for_plate == "tuesday"
		if (variable_for_time.to_s >= "700" and variable_for_time.to_s <= "930") or
		   (variable_for_time.to_s >= "1600" and variable_for_time.to_s <= "1930")
		    print "NO...you can't drive your car at this time :("
		else
			print "YESS....You are able to drive your car today at this time:)"
		end 		
	end

	if variavle_for_date.to_s != "4" and variable_for_plate == "wednesday" and variavle_for_date.to_s != "0" and variavle_for_date.to_s != "1"
		print "yes you can drive"
	elsif variavle_for_date.to_s == "4" and variable_for_plate == "wednesday"
		if (variable_for_time.to_s >= "700" and variable_for_time.to_s <= "930") or
		   (variable_for_time.to_s >= "1600" and variable_for_time.to_s <= "1930")
		    print "NO...you can't drive your car at this time :("
		else
			print "YESS....You are able to drive your car today at this time:)"
		end 		
	end

	if variavle_for_date.to_s != "5" and variable_for_plate == "thursday" and variavle_for_date.to_s != "0" and variavle_for_date.to_s != "1"
		print "yes you can drive"
	elsif variavle_for_date.to_s == "5" and variable_for_plate == "thursday"
		if (variable_for_time.to_s >= "700" and variable_for_time.to_s <= "930") or
		   (variable_for_time.to_s >= "1600" and variable_for_time.to_s <= "1930")
		    print "NO...you can't drive your car at this time :("
		else
			print "YESS....You are able to drive your car today at this time:)"
		end 		
	end

	if variavle_for_date.to_s != "6" and variable_for_plate == "friday" and variavle_for_date.to_s != "0" and variavle_for_date.to_s != "1"
		print "yes you can drive"
	elsif variavle_for_date.to_s == "6" and variable_for_plate == "friday"
		if (variable_for_time.to_s >= "700" and variable_for_time.to_s <= "930") or
		   (variable_for_time.to_s >= "1600" and variable_for_time.to_s <= "1930")
		    print "NO...you can't drive your car at this time :("
		else
			print "YESS....You are able to drive your car today at this time:)"
		end 		
	end

	if variavle_for_date.to_s == "0" or variavle_for_date.to_s == "1"
		print "yes you can drive"
	end
	gets()
end
if __FILE__ == $0
	inicio()
end



