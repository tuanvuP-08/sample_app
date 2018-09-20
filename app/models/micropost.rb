class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true,
    length: {maximum: Settings.model_micropost.content_max_len}
  validate  :picture_size

  scope :sort_by_desc, ->{order(created_at: :desc)}
  scope :sort_by_userid, ->(id){where user_id: id}

  mount_uploader :picture, PictureUploader

  private

  def picture_size
    return unless picture.size > Settings.model_micropost.picture_size.megabytes
    errors.add(:picture, t("picture_size_too_large"))
  end
end
