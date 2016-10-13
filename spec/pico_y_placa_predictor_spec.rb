require 'minitest/autorun'
require 'minitest/spec'

$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')
require 'script/pico_y_placa_predictor.rb'


describe PredictPicoyPlaca do
	subject { PredictPicoyPlaca.new }

	it "must be instance of PredictPicoyPlaca" do
		subject.must_be_instance_of PredictPicoyPlaca
	end

	describe '#plate' do
		before do
			@placa = PredictPicoyPlaca.new
		end 

		it "must response to plate" do
			subject.must_respond_to 'plate'
		end 

		it "must return monday if the last number in the plate is 1 or 2" do
			@placa.plate_typed_by_user("asd121").must_equal "monday"
			@placa.plate_typed_by_user("asd122").must_equal "monday"
		end

		it "must return tuesday if the last number in the plate is 3 or 4" do
			@placa.plate_typed_by_user("asd123").must_equal "tuesday"
			@placa.plate_typed_by_user("asd124").must_equal "tuesday"
		end

		it "must return wednesday if the last number in the plate is 5 or 6" do
			@placa.plate_typed_by_user("asd125").must_equal "wednesday"
			@placa.plate_typed_by_user("asd126").must_equal "wednesday"
		end

		it "must return thursday if the last number in the plate is 7 or 8" do
			@placa.plate_typed_by_user("asd127").must_equal "thursday"
			@placa.plate_typed_by_user("asd128").must_equal "thursday"
		end

		it "must return friday if the last number in the plate is 9 or 0" do
			@placa.plate_typed_by_user("asd120").must_equal "friday" 
			@placa.plate_typed_by_user("asd120").must_equal "friday"
		end
	end 


	describe '#date' do
		before do
			@date = PredictPicoyPlaca.new
		end 
		it "must response to date" do
			subject.must_respond_to 'date'
		end 
		it "must accept a date (month day) (day <= 31)and return a number from 0 to 6 " do
			@date.date_typed_by_user("january 31").must_be_within_delta(0,6)
		end
	end


	describe '#time' do
		before do
			@time = PredictPicoyPlaca.new
		end
		it "must response to time" do
			subject.must_respond_to 'time'
		end 
		it "must accept time between (00:00 and 23:59)" do
			@time.time_typed_by_user("15:37").must_be_within_delta(0,2359)
		end 
	end 
end



