class Girl < ActiveRecord::Base
  has_attached_file :photo, :styles  => { :small => "300x300#" , :large => "500x500>"}, :processors => [:cropper]
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
   after_update :reprocess_photo, :if => :cropping?
  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  def avatar_geometry(style = :original)
    @geometry ||= {}
    @geometry[style] ||= Paperclip::Geometry.from_file(photo.path(style))
  end

  private
  def reprocess_photo
    photo.reprocess!
  end
end
