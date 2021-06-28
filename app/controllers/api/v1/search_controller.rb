class Api::V1::SearchController < Api::V1::BaseController
  def index
    @mushrooms = Mushroom.limit(20)
  end
end
