module Auth
    def self.authenticate(username:, password:)
        Authenticate.build.run(username: username, password: password)
    end
end