class CountrySerializer < ActiveModel::Serializer
  attributes :id, :short_name, :long_name, :states

  def states
    object.states.map do |state|
      {
        id: state.id,
        short_name: state.short_name,
        long_name: state.long_name,
        cities: state.cities.map { |city| { id: city.id, short_name: city.short_name, long_name: city.long_name } }
      }
    end
  end
end
