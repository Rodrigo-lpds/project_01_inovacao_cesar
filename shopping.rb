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