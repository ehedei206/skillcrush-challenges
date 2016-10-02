class Blog

	@@total_blogs=0
	@@blog_posts=[]

	def self.add(blog)
		@@blog_posts << blog
		@@total_blogs +=1
	end
		
	def self.publish
		@@blog_posts.each do |blog|
			puts "Title:\n #{blog.get_title}"
			puts "Content:\n #{blog.get_content}"
			puts "Publish Date:\n #{blog.get_publishDate}"
		end
	end

end


class BlogPost < Blog


	def set_title=(title)
		@title=title
	end
	def get_title
		return @title
	end
	def set_content=(content)
		@content=content
	end
	def get_content
		return @content
	end
	def set_publishDate=(publishDate)
		@publishDate=publishDate
	end
	def get_publishDate
		return @publishDate
	end
	def set_author=(author)
		@author=author
	end
	def get_author
		return @author
	end

	def add
		BlogPost.add(self)
	end

	def publish
		BlogPost.publish
	end
end

puts "do you want to create another blog post?[Y/N]"
while gets.chomp.upcase=="Y"
	blogPost=BlogPost.new
	puts "What is the title of your post?"
	blogPost.set_title=gets.chomp
	puts "Write the content please"
	blogPost.set_content=gets.chomp
	blogPost.set_publishDate=Time.now
	puts "Who is the author?"
	blogPost.set_author=gets.chomp
	blogPost.add
	puts "do you want to create another blog post?[Y/N]"
end
puts blogPost.publish
