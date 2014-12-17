class Player < ActiveRecord::Base

	has_many :teams, :through => :playerteams
	has_many :games, :through => :playergames
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ActionController::Base.helpers.asset_path( "#{Rails.application.config.assets.prefix}/images/missing.png", digest: false)
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
