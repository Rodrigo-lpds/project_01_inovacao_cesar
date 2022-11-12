def products
	products = {
		"1" => { "name" => "ProdutoA", "price" => 50.00 },
		"2" => { "name" => "ProdutoB", "price" => 200.00 },
		"3" => { "name" => "ProdutoC", "price" => 100.00 }
	}
	
	products
end

def keep_shopping?
  puts "Selecione a opção desejada:"
  puts "[1] Comprar"
  puts "[2] Sair"

  option = gets.chomp.to_i

  if option == MenuOptions::SHOPPING
    true
  elsif option == MenuOptions::EXIT
    puts "Até breve!!!"
    false
  end
end

def select_product
  puts "Selecione a opção desejada:"
  
  products.each do |id, product_details|
    puts "[#{id}] #{product_details["name"]}: #{to_currency(product_details["price"])}"
  end
  selected_product_id = gets.chomp

  products[selected_product_id]
end

def product_total_value(product)
  puts "Digite a quantidade desejada:"
  quantity = gets.chomp.to_i

  product["price"] * quantity
end

def to_currency(value)
  "R$ " << value.to_s.tr('.', ',')
end