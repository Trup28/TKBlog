class User < ApplicationRecord
	before_save { self.email = email.downcase }
	has_many :articles, dependent: :destroy
	validates :fistname, presence: true, 
						uniqueness: {case_sensitive: false},
						length: { minimum: 3, maximum:25 }

	validates :lastname, presence: true,
	 					 uniqueness: true,
	 					 length: { minimum: 3, maximum:25 }

	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i					 
	validates :email, presence: true,
	 				  uniqueness: {case_sensitive: false},
	 				  length: { maximum:105 },
	 				  format: { with: VALID_EMAIL_REGEX }
	 
	
	validates :phone_no, presence: true,
                 		 numericality: true,
                 		 length: { minimum: 10, maximum: 15 }
   
   has_secure_password                     
end