class DreamSubmissionsController < InheritedResources::Base
  def index
    redirect_to :dreams
  end

  def edit
    redirect_to :dreams
  end

  def destroy
    redirect_to :dreams
  end

  def show
    redirect_to :dreams
  end

  def update
    redirect_to :dreams
  end

  def create
    @dream_submission = DreamSubmission.new(params[:dream_submission])

    if @dream_submission.save
      redirect_to :dreams, :notice => "Thanks for submitting your dream!"
    else
      render :action => :new
    end
  end
end
