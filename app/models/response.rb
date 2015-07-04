class Response < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :survey, :user, :question, :choice
end
