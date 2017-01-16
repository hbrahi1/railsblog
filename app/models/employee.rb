class Employee < ApplicationRecord
	belongs_to :department, touch: true
end
