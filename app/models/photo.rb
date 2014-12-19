class Photo < ActiveRecord::Base
  belongs_to :album


  has_attached_file :photo,
                    :styles => { :small => "150x150>", :large => "1000X1000>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo,
    :content_type => /\Aimage\/.*\Z/
end
