
class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items

  def to_s
    "#{id} \t  #{name} \t #{price} \t #{description}"
  end
end
