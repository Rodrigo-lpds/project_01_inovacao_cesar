$LOAD_PATH << '.'
require 'shopping.rb'

module MenuOptions
	SHOPPING = 1
	EXIT = 2
  end

def menu
	subtotal = 0

	while keep_shopping?
		product 			= select_product
		product_value = product_total_value(product)
		subtotal 			= update_subtotal(product_value, subtotal)

		puts "Subtotal: #{to_currency(subtotal)}"
	end
end


menu()