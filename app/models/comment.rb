# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
    
    belongs_to :user
    belongs_to :photo
    
    validates :body, :presence => true
    
    validates :user_id, :presence => true
    
    validates :photo_id, :presence => true
    
end
