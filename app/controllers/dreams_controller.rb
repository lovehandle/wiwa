class DreamsController < InheritedResources::Base
  def index
    @dreams = Dream.visible.page(params[:page]).per(5).order(:name)
  end
end
