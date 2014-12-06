class Album < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id", dependent: :destroy
  has_many :photos


  accepts_nested_attributes_for :photos
end
