require 'spec_helper'

describe DeviseAuthenticator do
  let(:password){"w00tw00t"}
  let(:encrypted_password){"$2a$10$EYBGqTSJs6GKH0T3Rw7zrefN1kBMOfwD0v9GOccq1BnIVDEcQ4aU."}
  it "should generate devise hash for a given password" do
    DeviseAuthenticator.setup do |config|
      config.pepper = "42888246834065a0e7b0c1ca33997e3ed1aede62abe8062328acf4b8e64ca979d8d22ccf54b1c5bca19c6098d0050b500fe77b9c5aeb4f4a6a182f415eb439db"
      config
    end
    DeviseAuthenticator.valid_password?(password, encrypted_password).should == true
  end
end