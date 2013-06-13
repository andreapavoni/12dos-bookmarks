class Bookmark < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :title, length: { minimum: 10 }, presence: true
  validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true

  paginates_per 25
end
