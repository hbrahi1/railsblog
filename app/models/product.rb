class Product < ApplicationRecord
	has_many :line_items
	has_many :orders, through: :line_items
	scope :available, -> { where(in_stock: true) }
	scope :cheap, -> { where(price: 0..0.5) }
	scope :cheaper_than, ->(price) { where("price < ?", price) }

	validates :name, presence: true,
					 length: { in: 2..20 },
					 uniqueness: true
	validates :price, presence: true
	validate :custom_validation

	before_save :capitaliz
	after_initialize :set_defaults

	def capitaliz
		self.name = self.name.capitalize
	end

	private
	def custom_validation
		if price == 13
			errors.add(:price, "I don't like 13 as a price")
		end
	end

end
