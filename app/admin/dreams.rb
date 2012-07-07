ActiveAdmin.register Dream do
  index do
    column(:name)
    column(:location)
    column(:age)
    column(:created_at)
    default_actions
  end
end
