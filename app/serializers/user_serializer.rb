class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :address, :zipcode

  def first_name
    object.first_name.capitalize if object.first_name
  end

  def last_name
    object.last_name.capitalize if object.last_name
  end

  def username
    object.username.capitalize if object.username
  end

  def email
    object.email.capitalize if object.email
  end

end
