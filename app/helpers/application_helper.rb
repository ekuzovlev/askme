module ApplicationHelper
  def user_avatar(user)
    user.avatar_url || asset_pack_path('media/images/avatar.jpg')
  end
end
