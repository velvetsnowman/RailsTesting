class User < ApplicationRecord
  validates :username,:lastname,:firstname,:email,:password,:age, presence: true
end
