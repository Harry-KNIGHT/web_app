class User < ApplicationRecord

    validates :username, presence: { strict: true }, uniqueness: true, length: {minimum: 3, maximum: 13}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, 
               uniqueness: { case_sensitive: false },
               format: { with: VALID_EMAIL_REGEX }
    
    has_secure_password

end
