$LOAD_PATH << '.'
require 'shopping.rb'

module MenuOptions
	SHOPPING = 1
	EXIT = 2
  end

def menu
	while keep_shopping?
		product = select_product
	end
end


menu()