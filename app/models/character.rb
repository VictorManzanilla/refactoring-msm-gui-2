# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
belongs_to(:movie)
belongs_to(:actor)

  def movie
    key = self.movie_id

    matching_set = Movie.where({ :id => key })

    the_one = matching_set.at(0)

    return the_one
  end
end
