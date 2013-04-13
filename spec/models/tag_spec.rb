require 'spec_helper'

describe Tag do
	
	before { @tag = Tag.new(tag: "Example tag.") }

	subject { @tag }

	it { should respond_to(:tag) }

	it { should be_valid }

	describe "when tag is not present" do
		before { @tag.tag = " " }
		it { should_not be_valid }
	end
end