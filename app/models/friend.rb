class Friend < ActiveRecord::Base
  validates :name, presence:true
  validate :checkPhoneAndEmail

  def checkPhoneAndEmail
    if phone.blank? and email.blank?
      errors.add(:email, "Provide email or phone")
      errors.add(:phone, "Provide email or phone")
    else
      return true
    end
  end
end
