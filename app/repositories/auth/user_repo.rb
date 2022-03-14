class Auth::UserRepo
  def self.build
    return self.new
  end

  def get_by_username(username)
    User.find_by(username: username)
  end
end