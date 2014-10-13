class Blog

attr_reader :title, :body, :type, :images, :caption, :video, :answer

  def initialize(params)
    @title = params["title"]
    @body = params["body"]
    @type = params["type"]
    @images = params["photos"] if params["photos"]
    @caption = params["caption"]
    # @answer = answer_params
    # binding.pry
    @video = params["player"].first['embed_code'] if params["player"]
  end

  def self.all
    blogs = []
    client = Tumblr::Client.new
    response = client.posts("houseofsoundradio.tumblr.com")
    response["posts"].each do |blog_attributes|
      blogs << Blog.new(blog_attributes)
    end
    blogs
  end
end
