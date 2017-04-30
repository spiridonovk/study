class User < ApplicationRecord
	validates :name, presence: true, length:  {minimum: 4}
	validates_format_of :name, :with => /\A[а-яА-ЯёЁa-zA-Z]+\z/, message: 'кукушечки'
end
