class Photo < ApplicationRecord
    
    belongs_to :user # :required => false     if you want to make users optional
    has_many :comments
    has_many :likes
    
    has_many :fans, :through => :likes, :source => :user
    
    validates :user_id, :presence => true
    
end
