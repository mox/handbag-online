class Template < ActiveRecord::Base
  has_many :handbags
  
  has_attached_file :image, :styles => { :small => "150x150>", :thumb => "50x50#", :medium => "300x300>", :large => "500x500#"  },
                  :url  => "/templates/preview/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/templates/preview/:id/:style/:basename.:extension"

  def self.find_templates_for_sale
  	find(:all, :order => "name")
  end
end
