class Api::V1::DictionariesController < Api::V1::BaseController
  def index
    @cap_shapes = CapShape.all
  end
end
