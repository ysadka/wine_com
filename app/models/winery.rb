class Winery < ActiveRecord::Base
  has_many :wines
  
  belongs_to :appellation
  belongs_to :region

  validates :name,           presence: true
  validates :appellation_id, presence: true
  validates :region_id,      presence: true

end
