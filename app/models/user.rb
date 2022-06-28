class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         with_options presence: true do
          validates :company_name
          validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'は半角数字で入力してください' }
         end

end
