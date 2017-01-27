class Article < ActiveRecord::Base
	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings

	def tag_list
		self.tags.collect { |tag|	tag.name }.join(", ")
	end
end
