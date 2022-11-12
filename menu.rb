$LOAD_PATH << '.'
require 'shopping.rb'

module MenuOptions
	SHOPPING = 1
	EXIT = 2
  end

def back_to_menu?
	puts "Digite 0 para voltar ao menu inicial"
	gets.chomp.to_i == 0
end

def menu
	subtotal = 0

	while keep_shopping?
		product 			= select_product
		product_value = product_total_value(product)
		subtotal 			= update_subtotal(product_value, subtotal)

		puts "Subtotal: #{to_currency(subtotal)}"

		redo unless back_to_menu?
	end
end

menu()