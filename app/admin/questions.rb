ActiveAdmin.register Question do 
  permit_params :type, :name, :answer, :quiz_id, :images_path, :description,options_attributes: [ :id, :question_id,:title,:corrent, :_destroy ]

  form do |f|
    f.inputs "Question Details" do
      f.input :type,collection: ["Fill in the Blank","Multiple Choice","Single Choice","Image Choice"]
      f.input :description
      f.input :images_path
      f.input :quiz_id, collection: Quiz.all.map { |m| [m.title, m.id] },as: :select

      f.has_many :options do |item|
        item.input :title
        item.input :corrent
      end
    end
    f.actions
  end
end
