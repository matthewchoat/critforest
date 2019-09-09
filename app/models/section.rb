class Section < ApplicationRecord
  belongs_to :guide
  has_many :pages
end
