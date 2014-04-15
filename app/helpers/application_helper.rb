module ApplicationHelper

  def is_active_path_class(path)
    "active" if current_page?(path)
  end

  def nice_date_time(date)
    date.strftime("%a %b #{date.day.ordinalize} %Y at %H:%M")
  end
  def nice_date(date)

    return "" if date.nil?

    date.strftime("%a %b #{date.day.ordinalize} %Y")

  end

  def production?
    Rails.env == "production"
  end

  def development?
    Rails.env == "development"
  end

  def staging?
    Rails.env == "staging"
  end

end
