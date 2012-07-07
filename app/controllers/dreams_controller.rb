class DreamsController < InheritedResources::Base
  def index
    @dreams = Dream.visible
  end
end
