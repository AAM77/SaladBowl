class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :address, :zipcode

  def first_name
    object.first_name.capitalize
  end

  def last_name
    object.last_name.capitalize
  end

  def username
    object.username.capitalize
  end

  def email
    object.email.capitalize
  end
  
end
