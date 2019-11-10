ActiveAdmin.register Option do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :question_id, :title, :corrent
  #
  # or
  #
  # permit_params do
  #   permitted = [:question_id, :title, :corrent]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
