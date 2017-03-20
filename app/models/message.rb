class Message < ActiveRecord::Base
  belongs_to :model
  belongs_to :conversation
end
