class Movie < ApplicationRecord
  belongs_to :user
  validates :video_id, uniqueness: true, presence: true

  REGEX = /^.*(youtu.be\/|v\/|embed\/|watch\?|youtube.com\/user\/[^#]*#([^\/]*?\/)*)\??v?=?([^#\&\?]*).*/
end
