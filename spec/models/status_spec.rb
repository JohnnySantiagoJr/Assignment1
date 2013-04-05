require 'spec_helper'

describe Status do
	before { @status = Status.new(name: "Example User", email: "user@example.com") }

	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
end