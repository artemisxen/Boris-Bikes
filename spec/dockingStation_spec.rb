require 'dockingStation'
require 'bike'

describe DockingStation do
	it "DockingStation respond to release_bike" do
		expect(subject).to respond_to(:release_bike)
	end
	it "Docking station raises an error if it tries to release a bike when none are available" do
	expect { subject.release_bike }.to raise_error("No bikes available to release")
	end
	it "DockingStation to dock a bike" do
		bike = Bike.new
		expect(subject).to respond_to(:dock)
		expect(subject.dock(bike)).to eq bike
	end
	it "DockingStation to return a bike after release_bike called" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike).to be_a Bike
	end
	it "DockingStation to raise error if docking station is full and user tries to dock a bike" do
		bike = Bike.new
		subject.dock(bike)
		bike2 = Bike.new
		expect { subject.dock(bike2) }.to raise_error("Docking Station full")
	end
end