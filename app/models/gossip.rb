class Gossip < ApplicationRecord
  # test like 
  has_many :likes, as: :reference, dependent: :destroy
 
  belongs_to :user ,optional: true
  delegate :first_name, to: :user, allow_nil: true, prefix: true
  has_many :taggers
  has_many :tags, through: :taggers
  has_many:likes
end
#user,optional: true
