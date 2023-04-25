# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    # <% dir_id = @the_movie.director_id %>

    # <% matching_directors = Director.where({ :id => dir_id }) %>

    # <% the_director = matching_directors.at(0) %>

    # <%= the_director.name %>
    matching_directors = Director.where({ :id => self.director_id })
    the_director = matching_directors.at(0)
    return the_director
  end
end
