ApplicationRecord.transaction do
	Article.create({"title"=>"eee", "text"=>"fffff"})
	Article.create({"title"=>"111", "text"=>"11111"})
	Article.create({"title"=>"TTTT", "text"=>"XXXXX"})
	Department.create({"name"=>"IT"})
	Department.create({"name"=>"HR"})
	Employee.create({"department_id"=>1, "name"=>"Ibrahim"})
	Employee.create({"department_id"=>1, "name"=>"Cosmin"})
	Employee.create({"department_id"=>1, "name"=>"Andrew"})
	Employee.create({"department_id"=>1, "name"=>"Elena"})
	Employee.create({"department_id"=>1, "name"=>"Stephane"})
	Employee.create({"department_id"=>2, "name"=>"Dominique"})
	Employee.create({"department_id"=>2, "name"=>"Tara"})
	Order.create({"delivery_address"=>"123 acme street"})
	Order.create({"delivery_address"=>"test road"})
	Product.create({"name"=>"Milk (1 liter)", "price"=>0.45, in_stock: true})
	Product.create({"name"=>"Butter (250 gr)", "price"=>0.75, in_stock: true})
	Product.create({"name"=>"Flour (1 kg)", "price"=>0.48, in_stock: true})
	LineItem.create({"order_id"=>1, "product_id"=>1, "quantity"=>3})
	LineItem.create({"order_id"=>1, "product_id"=>2, "quantity"=>2})
	LineItem.create({"order_id"=>2, "product_id"=>1, "quantity"=>5})
	LineItem.create({"order_id"=>2, "product_id"=>2, "quantity"=>1})
	LineItem.create({"order_id"=>2, "product_id"=>3, "quantity"=>8})

	30.times do
		dept = Department.new(name: Faker::Company.name)
		if dept.save
			SecureRandom.random_number(100).times do
				dept.employees.create( name: Faker::Name.first_name)
			end
		end
	end

end
