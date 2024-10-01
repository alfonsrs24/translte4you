#email:string
#password_digest:string
#is_active:boolean
#
#password:string virtual
#password_confirmation:string virtual


class Usera < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end

