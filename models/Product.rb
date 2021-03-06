class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :comments, as: :target


  def to_s
    "#{id} \t  #{name} \t #{price} \t #{description} \t #{quantity}"
  end

  def self.random_id
     self.all.shuffle.first.id
  end
end

class Supplier < ActiveRecord::Base
  has_many :products
  has_many :categories, -> { distinct }, through: :products
  has_many :comments, as: :target
end