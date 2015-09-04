module UsersHelper
  
  def avatar(user)
    if user.avatar.present?
      image_tag(user.avatar, class: "widget-meta profile-avatar")
    else
      image_tag("https://pbs.twimg.com/profile_images/575994177843904512/Su6OblHX_400x400.jpeg", class: "widget-meta profile-avatar")
    end
  end

  def cover_photo(user)
    if user.cover_photo.present?
      image_tag(user.cover_photo)
    else
      image_tag("http://31.media.tumblr.com/85d20081f45167cfa0444db23df1f0d5/tumblr_mi6ul42CIl1race41o1_500.gif")
    end
  end

end
