class User < ActiveRecord::Base
  # Mass Assignment...
  # attr_accessible :username, :password
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true

  def self.authenticate(username, password)
    # SQL Injection...
    where( "username = '#{username}' AND password = '#{password}'" ).first
    # Consider something like this instead:
    # where( "username = ? AND password = ?", username, password ).first 
  end
end
