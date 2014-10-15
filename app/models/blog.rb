class Blog

attr_reader :title, :body, :type, :images, :caption, :player, :answer, :post_id, :reblog_key, :permalink_url, :post_url, :tags

  def initialize(params)
    @title = params["title"]
    @body = params["body"]
    @type = params["type"]
    @images = params["photos"] if params["photos"]
    @caption = params["caption"]
    @reblog_key = params["reblog_key"]
    @post_id = params["id"]
    @player = params["player"]
    @permalink_url = params["permalink_url"]
    @post_url = params["post_url"]
    @tags = params["tags"]
  end

  def self.all
    blogs = []
    client = Tumblr::Client.new
    response = client.posts("houseofsoundpdx.tumblr.com")
    response["posts"].each do |blog_attributes|
      blogs << Blog.new(blog_attributes)
    end
    blogs
  end


end
