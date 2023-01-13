class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def full_name
    [self.first_name, self.last_name].join(' ')
  end
end
