class Wine < ActiveRecord::Base
  belongs_to :winery
  belongs_to :grape

  has_many :carts

  validates :vintage,       presence: true
  validates :winery_id,     presence: true
  validates :grape_id,      presence: true
  validates :category_type, presence: true

  def serving_temperature_as_degree
    "43˚"
  end

  def alcohol_content_as_percent
     "15.5%" 
  end

end
