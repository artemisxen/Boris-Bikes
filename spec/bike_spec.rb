require 'bike'

describe Bike do
	it "Bike respond to working?" do
		expect(subject).to respond_to(:working?)
		expect(subject.working?).to eq true
	end
end