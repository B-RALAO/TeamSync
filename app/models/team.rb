class Team < ApplicationRecord
  belongs_to :user
  has_many :players, dependent: :destroy
  has_many :employees, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :notifications

  validates :name, :sport, :stadium, :address, :budget, presence: true
end
