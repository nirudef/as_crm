# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :homework
  belongs_to :lesson

  validates :title, presence: true,
                    length: { maximum: 100 }
  validates :rate, presence: true,
                    numericality: { greater_than: 0 }
                    
end
