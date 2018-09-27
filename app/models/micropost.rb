class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true,
    length: {maximum: Settings.model_micropost.content_max_len}
  validate  :picture_size

  scope :sort_by_desc, ->{order(created_at: :desc)}
  scope :select_by, ->(following_ids, id) do
    where("user_id IN (#{following_ids}) OR user_id = #{id}")
  end

  mount_uploader :picture, PictureUploader

  private

  def picture_size
    return unless picture.size > Settings.model_micropost.picture_size.megabytes
    errors.add(:picture, t("picture_size_too_large"))
  end
end
