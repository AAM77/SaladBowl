class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :country, :users_at_location, :salad_bars

  def users_at_location
    object.users.map { |u| u.id }.empty? ? 'None' : object.users.map { |u| { id: u.id, username: u.username } }
  end

  # def salad_bars_at_location
  #   object.salad_bars.empty? ? 'None' : object.salad_bars
  # end
end
