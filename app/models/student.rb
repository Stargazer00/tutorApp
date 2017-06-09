class Student < ApplicationRecord
  has_secure_password
  has_many :cases 

  validates :name, :email, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false },
  					format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  VALID_MOBILE_REGEX = /\A^[569][0-9]{7}$\z/i
  validates :mobile_no, length: { minimum: 8 }, format: { with: VALID_MOBILE_REGEX }	
  validates :address, length: { maximum: 255, minimum: 5 }
  validates :contact_name, length: { minimum: 3 }

  enum relation: {
		"Self"      => 0,
		"Parent"    => 1,
		"Sibling"   => 2,
		"Family"	=> 3,
		"Friend"	=> 4,
		"Others"	=> 5
	}

	enum district: {
		"Central" 		=> 0,
		"Eastern" 		=> 1,
		"Southern" 		=> 2,
		"Wan Chai" 		=> 3,
		"Sham Shui Po"	=> 4,
		"Kowloon City" 	=> 5,
		"Kwun Tong"		=> 6,
		"Wong Tai Sin" 	=> 7,
		"Yau Tsim Mong" => 8,
		"Islands" 		=> 9,
		"Kwai Tsing"	=> 10,
		"North"			=> 11,
		"Sha Tin"		=> 12,
		"Tai Po"		=> 13,
		"Tsuen Wan" 	=> 14,
		"Tuen Mun" 		=> 15,
		"Yuen Long" 	=> 16
	}
end
