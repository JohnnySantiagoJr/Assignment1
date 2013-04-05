require 'spec_helper'

describe Status do
	before { @status = Status.new(status: "Example Status", image_url: "http://www.images.com/exampleimage.jpg", geocode: "41.9082662 -88.060051") }

	subject { @status }

	it { should respond_to(:status) }
	it { should respond_to(:image_url) }
	it { should respond_to(:geocode) }

	it { should be_valid }

	describe "when status is not present" do
		before { @status.status = " " }
		it { should_not be_valid }
	end
end