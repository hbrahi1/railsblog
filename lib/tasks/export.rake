namespace :export do 
	desc "Prints Arcticle.all in a seeds.rb way."
	task :seeds_format => :environment do
		Article.order(:id).all.each do |article|
			bad_keys = ['created_at', 'updated_at', 'id']
			serialized = article.serializable_hash.
						delete_if{|key,value| bad_keys.include?(key)}
			puts "Article.create(#{serialized})"
		end

		Department.order(:id).all.each do |department|
			bad_keys = ['created_at', 'updated_at', 'id']
			serialized = department.serializable_hash.
						delete_if{|key,value| bad_keys.include?(key)}
			puts "Department.create(#{serialized})"
		end

		Employee.order(:id).all.each do |employee|
			bad_keys = ['created_at', 'updated_at', 'id']
			serialized = employee.serializable_hash.
						delete_if{|key,value| bad_keys.include?(key)}
			puts "Employee.create(#{serialized})"
		end

		Order.order(:id).all.each do |order|
			bad_keys = ['created_at', 'updated_at', 'id']
			serialized = order.serializable_hash.
						delete_if{|key,value| bad_keys.include?(key)}
			puts "Order.create(#{serialized})"
		end

		Product.order(:id).all.each do |product|
			bad_keys = ['created_at', 'updated_at', 'id']
			serialized = product.serializable_hash.
						delete_if{|key,value| bad_keys.include?(key)}
			puts "Product.create(#{serialized})"
		end

		LineItem.order(:id).all.each do |item|
			bad_keys = ['created_at', 'updated_at', 'id']
			serialized = item.serializable_hash.
						delete_if{|key,value| bad_keys.include?(key)}
			puts "LineItem.create(#{serialized})"
		end
	end
end