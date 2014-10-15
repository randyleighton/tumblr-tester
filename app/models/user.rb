class User

attr_reader :name, :likes, :following, :blogs

  def initialize(params)
    @name = params.first["name"]
    @likes = params["likes"]
    @following = params["following"]
    @url = params["url"]
  end

  def self.all
    users = []
    client = Tumblr::Client.new(:client => :httpclient)
    response = client.info
    # user = response["user"]
    users << response
  end

end
