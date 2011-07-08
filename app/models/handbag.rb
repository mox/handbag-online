class Handbag < ActiveRecord::Base
	validates_presence_of :name, :tel, :email
	
	
						
	belongs_to :template
	
	has_attached_file :logo, :styles => { :small => "150x150>", :thumb => "50x50#" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
end
