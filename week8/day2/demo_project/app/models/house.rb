# create_table "houses", force: :cascade do |t|
#     t.string "address", null: false
#     t.string "resident"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end


class House < ActiveRecord::Base
    has_many :person,
    primary_key: :id,
    foreign_key: :house_id
    class_name: 'Person'
    # def residents
    #     Person.where(house_id: self.id)
    # end
end