# == Schema Information
#
# Table name: houses
#
#  id         :bigint(8)        not null, primary key
#  address    :string           not null
#  resident   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class House < ActiveRecord::Base
    has_many :person,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
    # def residents
    #     Person.where(house_id: self.id)
    # end
end
