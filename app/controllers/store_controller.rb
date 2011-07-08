class StoreController < ApplicationController
  def index
  	@templates = Template.find_templates_for_sale
  end

end
