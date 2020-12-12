class User < ActiveRecord::Base
    has_secure_password

    has_many :weather_posts
end
