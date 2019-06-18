class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :country, :users_at_location

  def users_at_location
    loc = Location.find(object.id)
    loc.users.map { |u| u.id }.empty? ? 'None' : loc.users.map { |u| u.id }
  end
end
