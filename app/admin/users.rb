ActiveAdmin.register User do
  permit_params :admin, :premium
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    inputs 'User' do
      f.input :admin
      f.input :premium
    end
    f.semantic_errors
    f.actions
  end

  index do
    actions
    column :id
    column :email
    column :name
    column :admin
    column :premium
    column :subscribed
    column :occupation
    column :grade
    column :school
    column :location
    column :facebook
    column :pinterest
    column :twitter
    column :google
    column :created_at
    column :last_sign_in_at
  end

end
