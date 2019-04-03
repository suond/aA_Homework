# == Schema Information
#
# Table name: people
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  house_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#





class Person < ActiveRecord::Base
    belongs_to :house, {
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House
    }
    # def house
    #     House.find(self.house_id)
    # end
    
end
