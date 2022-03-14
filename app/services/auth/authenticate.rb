module Auth
  class Authenticate
    def self.build
      user_repo = UserRepo.build
      self.new(user_repo)
    end

    def initialize(user_repo)
      @user_repo = user_repo
    end

    def run(username:, password:)
      user = @user_repo.get_by_username(username)
      return false if user.nil?
      result = user.authenticate(password)
      return { success: false, user: nil } if result == false
      { success: true, user: result }
    end
  end
end