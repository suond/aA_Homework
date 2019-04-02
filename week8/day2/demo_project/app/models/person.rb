# create_table "people", force: :cascade do |t|
#     t.string "name", null: false
#     t.integer "house_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end



class Person < ActiveRecord::Base
    belongs_to :house, {
        primary_key: id,
        foreign_key: :house_id,
        class_name: :House
    }
    # def house
    #     House.find(self.house_id)
    # end
    
end