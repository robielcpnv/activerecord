require_relative 'connection'
require_relative 'models'

=begin
require 'observer'
firstProduct = Product.first
lastProduct = Product.last
good_comment = Comment.create(body:'nice product', target: firstProduct)
firstProduct.comments << good_comment
lastProduct.comments.create(body:'nice product', target: lastProduct)


firstSupplier = Supplier.first
lastSupplier = Supplier.last
bad_comment = Comment.create(body:'arrive late', target: firstProduct)
firstSupplier.comments << bad_comment
lastSupplier.comments.create(body:'arrive late', target: lastProduct)


firstProduct = Product.first
firstProduct.quantity = 2
firstProduct.save

=end


#puts Order.exepensive_command
#puts Category.never_ordered
puts Client.without_orders
puts Client.without_orders.destroy_all
#puts Client.without_orders.delete_all
