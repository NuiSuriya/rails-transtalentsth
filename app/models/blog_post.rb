class BlogPost < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many_attached :photos
  has_many_attached :trix_attachments

  validates :vdo_url, format: { with: %r{\Ahttps://www\.youtube\.com/watch\?v=.+\z},
                                message: "must be a valid YouTube video URL" }, allow_blank: true
  # We added a validates statement to validate the format of the video_url attribute. It checks if the URL matches the format of a YouTube video URL. You can adjust the regular expression as needed.
  # We used allow_blank: true to allow posts to be saved without a video URL.

  def excerpt
    title.truncate(50)
  end
end
