require 'dockingStation'
require 'bike'

describe DockingStation do
	subject { DockingStation.new }

	let(:bike) { Bike.new }#Individual bike

	it "DockingStation respond to release_bike" do
		expect(subject).to respond_to(:release_bike)
	end
	it "Docking station raises an error if it tries to release a bike when none are available" do
	expect { subject.release_bike }.to raise_error("No bikes available to release")
	end

	it "DockingStation to dock a bike" do
		expect(subject.bikes.length).to eq 0
		subject.dock(bike)
		expect(subject.bikes.length).to eq 1
	end
	it "DockingStation to return a bike after release_bike called" do

		subject.dock(bike)
		expect(subject.release_bike).to be_a Bike
	end
	it "DockingStation to raise error if docking station is full and user tries to dock a bike" do
		20.times {subject.dock(bike)}
		expect { subject.dock(bike) }.to raise_error("Docking Station full")
	end
end
