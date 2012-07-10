ActiveAdmin.register DreamSubmission do
  member_action :convert, :method => :get do
    submission = DreamSubmission.find(params[:id])
    dream      = submission.to_dream

    if dream.save
      redirect_to admin_dream_path(dream)
    else
      render :action => :show
    end
  end

  sidebar :actions, :only => :show do
    link_to("Create Dream From Submission", convert_admin_dream_submission_path(dream_submission))
  end
end
