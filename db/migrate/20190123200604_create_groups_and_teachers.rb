class CreateGroupsAndTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_teachers do |t|
     t.belongs_to :group, index: true
     t.belongs_to :teacher, index: true
    end
  end
end
