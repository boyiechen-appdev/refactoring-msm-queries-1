# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    # <% a_id = @the_actor.id %>

    # <% matching_characters = Character.where({ :actor_id => a_id }) %>

    # <% matching_characters.each do |a_character| %>
    matching_characters = Character.where({ :actor_id => self.id })
    return matching_characters
  end
end
