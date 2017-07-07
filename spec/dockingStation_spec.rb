
require 'dockingStation'
require 'bike'
require 'BikeContainer'

describe DockingStation do
	subject { DockingStation.new }

	let(:bike) { double(:bike, :working? => true)}#Individual bike
	let(:station) {DockingStation.new(15)}
	let(:broken_bike) { double(:bike, :working? => false)}

	it "DockingStation respond to release_bike" do
		expect(subject).to respond_to(:release_bike)
	end

	it "DockingStation to dock a bike" do
		expect(subject.bikes.length).to eq 0
		subject.dock(bike)
		expect(subject.bikes.length).to eq 1
	end

	it "DockingStation to return a bike after release_bike called" do
		subject.dock(bike)
		expect(subject.release_bike).to eq bike
	end

	it "checks to see that we don't release broken bikes" do
		subject.dock(bike)
		subject.dock(broken_bike)
		expect((subject.release_bike).working?).to eq true
	end

	it "DockingStation to raise error if all bikes are broken and user tries to relase a bike" do
		subject.dock(broken_bike)
		expect { subject.release_bike }.to raise_error("All bikes are broken" )
	end

	it "checks to see that capacity can be set when a new DockingStation is created" do
		expect(station.capacity).to eq 15
	end

	it "checks to see if the default capacity is set when a new DockingStation is created" do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end

	it "checks to see that DockingStations accept both working and broken bikes" do
		subject.dock(bike)
		expect(subject.bikes.length).to eq 1
		subject.dock(broken_bike)
		expect(subject.bikes.length).to eq 2
	end

	it "checks to see if a bike being docked is broken and reports it if it is" do
		expect(subject.dock(broken_bike)).to eq "This bike is broken!"
	end


end
