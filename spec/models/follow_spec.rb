require 'spec_helper'

describe Follow do
	
	before { @follow = Follow.new(follower: "Example User", followee: "Other Example User") }

	subject { @follow }

	it { should respond_to(:follower) }
	it { should respond_to(:followee) }
end