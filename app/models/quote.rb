class Quote < ActiveRecord::Base
	belongs_to :category
	validates :string, presence: true, uniqueness: true
end
