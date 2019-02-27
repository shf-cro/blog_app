class Content < ApplicationRecord
  mount_uploader :image1, ImageUploader
  scope :search, (->(word) { where('title LIKE ? OR body LIKE ?',
                                   "%#{sanitize_sql_like(word)}%",
                                   "%#{sanitize_sql_like(word)}%") })
end
