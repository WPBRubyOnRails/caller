class Voter < ApplicationRecord
  belongs_to :user, optional: true
end
