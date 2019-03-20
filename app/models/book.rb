class Book< ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :reviews

  has_attached_file :b_image, styles: { b_index: "250x350>", book_show: "350x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :b_image, content_type: /\Aimage\/.*\z/
end
