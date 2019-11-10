ActiveAdmin.register Theory do


  permit_params :quiz_id, :description
  form do |f|
    f.inputs "Theory Details" do
      f.input :description, as: :quill_editor
      f.input :quiz_id, collection: Quiz.all.map { |m| [m.title, m.id] },as: :select
    end
  end
  
end
