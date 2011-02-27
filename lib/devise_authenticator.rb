require 'bcrypt'
module DeviseAuthenticator
  class Config
    attr_accessor :pepper
  end

  def setup
    @@config = yield DeviseAuthenticator::Config.new
  end

  def valid_password?(password, encrypted_password)
    bc = BCrypt::Password.new(encrypted_password)
    hashed_password = BCrypt::Engine.hash_secret("#{password}#{@@config.pepper}", bc.salt)
    hashed_password == encrypted_password
  end
  module_function :setup, :valid_password?
end
