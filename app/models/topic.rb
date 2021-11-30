class Topic < ApplicationRecord

  belongs_to :sub
  # where we would do validations
end
