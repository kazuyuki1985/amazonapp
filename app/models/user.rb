class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: { minimun: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: ^> { new_record? || changes[:crypted_password] }
  validated :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
end
