class PreferenceSerializer < ActiveModel::Serializer
  attributes :user,
             :id,
             :user_id,
             :allergy,
             :vegetarian,
             :kosher,
             :halal,
             :fasting,
             :bodybuilding,
             :bulkin,
             :weight_loss


  def user
    u = object.user
    { id: u.id, name: u.username }
  end
end
