module OrbDef
  class DetectionType < ApplicationRecord
    has_many :fires

    validates :name, presence: true, uniqueness: true
  end
end
