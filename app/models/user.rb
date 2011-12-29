class User < ActiveRecord::Base
#	 :uid
# 	 :name
# 	 :email
#	 :location
# 	 :program
#	 :organization
# 	 :title
# 	 :twitterid
# 	 :linkedinid
# 	 :about

	def self.create_with_omniauth(auth)
  		create! do |user|
    		user.provider = auth["provider"]
    		user.uid = auth["uid"]
    		user.name = auth["info"]["name"]
    		user.twitterid = auth["info"]["urls"]["Twitter"]
    		user.location = auth["info"]["location"]
  		end
	end

end