class Recipe < ApplicationRecord
  has_attached_file :image, styles: {
    big: "1920x1080>",
    medium: "1280x720>",
    small: "320x260>"
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :image, :less_than => 4.megabytes

  def difficulty?(difficulty)
    case difficulty
    when 1
      'Facile'
    when 2
      'Moyen'
    when 3
      'Difficile'
    else
      'ND'
    end
  end

  def season?(season)
    case season
    when 'all'
      'Tout'
    when 'summer'
      'Été'
    when 'automn'
      'Automne'
    when 'spring'
      'Printemps'
    when 'winter'
      'Hiver'
    else
      'ND'
    end
  end

  def cook_time?(cook)
    if ((cook/60) >= 1)
      hours = (cook/60).round
      minutes = (cook-(hours*60))
      "#{hours}h#{minutes}"
    elsif ((cook/60) < 1)
      "#{cook}m"
    else
      'ND'
    end
  end

end
