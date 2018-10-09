# class Movie < ApplicationRecord
# 	searchkick
# 	belongs_to :user
# 	has_many :reviews

# 	has_attached_file :image, styles: { medium: "400x600#>", thumb: "100x100>" }, default_url: "/images/missing.png"
#   	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
# end

class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews

	has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end