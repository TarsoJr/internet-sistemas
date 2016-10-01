class Student < ApplicationRecord
  has_many :classrooms, dependent: :destroy
  has_many :courses, through: :classrooms

  validates :name, presence: true, length: { minimum: 3, maximum: 200 }
  validates :register_number, presence: true, length: { is: 5 }, uniqueness: true, :numericality => {:only_integer => true}
  validates :status, presence: true

end
