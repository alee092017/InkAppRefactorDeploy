class Pen < ApplicationRecord
  searchkick settings: {blocks: {read_only: false}}
  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { medium: "300X300>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
