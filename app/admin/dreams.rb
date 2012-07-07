ActiveAdmin.register Dream do

  # Index Customizations

  index do
    column(:name)
    column(:location)
    column(:age)
    column(:created_at)
    default_actions
  end

  filter(:name)
  filter(:location)
  filter(:age)
  filter(:visible)
  filter(:created_at)
  filter(:updated_at)

  # Form Customizations

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input(:name)
      f.input(:location)
      f.input(:age, :as => :number)
      f.input(:visible, :as => :radio)
      f.input(:portrait, :as => :file, :hint => f.template.image_tag(f.object.portrait.url(:medium)))
    end
    f.buttons
  end

end
