class Voter < ActiveRecord::Base
	def self.authenticate(username, password)
        #only approved voters should be able to log in
        voter = find_by_username_and_password_and_approved(username, password, true)    
    end
end
