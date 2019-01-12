# == Schema Information
#
# Table name: lessons
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  course_id   :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Lesson < ApplicationRecord
  belongs_to :course
end
