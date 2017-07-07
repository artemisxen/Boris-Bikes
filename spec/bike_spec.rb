require 'bike'

describe Bike do
	subject(:bike) {Bike.new}
	let(:broken_bike) {bike.new(false)}

	it "Bike respond to working?" do
		expect(subject).to respond_to(:working?)
	end

	it "Expects a new bike to be working by default" do
		expect(subject.working?).to eq true
	end

	it "Bike respond to fix" do
		expect(subject).to respond_to(:fix)
	end

	it "calling Fix should make Bike.working == true" do
		subject.broken
		expect(subject.working?).to eq false
		subject.fix
		expect(subject.working?).to eq true
	end

end
