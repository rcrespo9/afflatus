class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
	@items = [ PhotoInspired, MusicInspired ].inject([ ]) do |a, with_class|
  	a + with_class.find(:all, :limit => 10, :order => 'created_at DESC')
	end.sort_by(&:created_at).reverse[0, 10]
	end
end
