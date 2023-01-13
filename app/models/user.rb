class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile_user
  accepts_nested_attributes_for :profile_user, reject_if: :all_blank

  def full_name
    [self.first_name, self.last_name].join(' ')
  end
end
