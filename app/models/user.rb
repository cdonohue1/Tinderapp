class User < ActiveRecord::Base
    belongs_to :user
    validates :name, :email, :pasword , presence: true
end
