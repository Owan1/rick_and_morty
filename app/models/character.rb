class Character < ApplicationRecord
    has_and_belongs_to_many :episodes

    validates :name, uniqueness: { case_sensitive: false }
    validates :status, presence: true
    validates_associated :episodes
end
