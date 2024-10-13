class Comment < ApplicationRecord
  include Visible

  belongs_to :todo
end
