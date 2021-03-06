# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :course
  has_many :students
  has_and_belongs_to_many :teachers
  has_many :lessons
  has_many :themes

  validates :name, presence: true,
                    length: { minimum: 3, maximum: 100 }
end
