ActiveAdmin.register Workshop do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :community_id, :title, :location, :link, :date, :description, :start_date

index do
  column :id
  column :title
  column :location
  column :link
  column :date
  column :start_date
  column :description
  column :created_at
  column :updated_at
  actions
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
