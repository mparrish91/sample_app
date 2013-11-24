require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com") }

  subject { @user }

  expect(it).to respond_to(:name)
  expect(it).to respond_to(:email)
  expect(it).to respond_to(:password_digest)
  expect(it).to respond_to(:password)
  expect(it).to respond_to(:password_confirmation)
  expect(it).to respond_to(:name)

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

end