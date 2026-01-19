class Student < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

           has_and_belongs_to_many :courses
end
