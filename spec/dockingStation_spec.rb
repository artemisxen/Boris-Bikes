require 'dockingStation'
require 'bike'

describe DockingStation do
	it "DockingStation respond to release_bike" do
		expect(subject).to respond_to(:release_bike)
	end
	it "DockingStation to return a bike after release_bike called" do
		expect(subject.release_bike).to be_a Bike
	end
end