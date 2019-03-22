# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_one :user, foreign_key: :email
  has_and_belongs_to_many :groups

  has_one_attached :picture

  after_create :create_user

  has_one_attached :avatar

  after_create :create_user

  enum gender: { male: 1, female: 2 }
  has_many_attached :images

  before_validation { self.email.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, presence: true,
                    length: { minimum: 2, maximum: 20 }
  validates :last_name, presence: true,
                    length: { minimum: 2, maximum: 20 }
  validates :middle_name, presence: true,
                    length: { minimum: 2, maximum: 20 }
  validates :iin, presence: true,
                    length: { maximum: 12 }
  validates :tel_1, presence: true,
                    length: { maximum: 12 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  private

  def create_user
    teacher = Teacher.last
    user = User.create!(email: teacher.email, role: 3)
  end
end
