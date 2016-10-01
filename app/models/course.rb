class Course < ApplicationRecord
  has_many :classrooms, dependent: :destroy
  has_many :students, through: :classrooms
  validates :name, presence: true, length: { minimum: 3, maximum: 200 }, uniqueness: true
  validates :description, presence: true, length: { minimum: 10, maximum: 2000 }
  validates :status, presence: true
end
