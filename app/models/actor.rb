class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  actor_full_name = "#{self.first_name} #{self.last_name}"
  actor_full_name
  end


  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end