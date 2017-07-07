require 'BikeContainer'
require 'bike'

describe BikeContainer do

   let(:test){Class.new {extend BikeContainer}}
   let(:bike) { double(:bike, :working? => true)}
   let(:bike2) { double(:bike)}

   it "respond to release" do
     expect(test).to respond_to(:release)
   end

    it "raises an error if it tries to release a bike when none are available" do
      expect { test.release(bike) }.to raise_error("No bikes available to release")
    end

    it "raises an error if the bike is not found" do
      test.store(bike)
      expect { test.release(bike2) }.to raise_error("Bike not found")
    end

    it "to store a bike" do
      expect(test.bikes.length).to eq 0
      test.store(bike)
      expect(test.bikes.length).to eq 1
    end

    it "to return a bike after release called" do
  		test.store(bike)
  		expect(test.release(bike)).to eq bike
  	end

end
