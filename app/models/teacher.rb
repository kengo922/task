class Teacher < ApplicationRecord
  belongs_to :department
  belongs_to :subject
  belongs_to :day
  belongs_to :limit
end
