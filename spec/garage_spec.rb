

require 'Garage'

describe Garage do
	subject { Garage.new }
	let(:bike) { double(:bike, :fix => true, :working? => true)}#Individual bike
	let(:broken_bike) { double(:bike, :working? => false, :fix => true)}

it "Garage should make all stored bikes working when fix_bikes method is called" do

	subject.store(bike)
	subject.store(broken_bike)
	allow(broken_bike).to receive(:fix!)
  allow(broken_bike).to receive(:working?).and_return(true)
	expect(subject.bikes[0].working?).to eq true
	expect(subject.bikes[1].working?).to eq true
end

end
