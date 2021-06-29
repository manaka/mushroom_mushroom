class Api::V1::DictionariesController < Api::V1::BaseController
  def index
    @cap_shapes = CapShape.all
    @cap_surfaces = CapSurface.all
    @colors = Color.all
    @odor = Odor.all
    @gill_attachments = GillAttachment.all
    @gill_spacings = GillSpacing.all
    @gill_sizes = GillSize.all
  end
end
