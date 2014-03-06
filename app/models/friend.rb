class Friend < ActiveRecord::Base
  validates :name, presence:true
  validate :checkPhoneAndEmail
  has_and_belongs_to_many :groups
  def checkPhoneAndEmail
    if phone.blank? and email.blank?
      errors.add(:base, "Provide email or phone")
    else
      return true
    end
  end
end
