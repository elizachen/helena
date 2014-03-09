module Helena
  class SubQuestion < ActiveRecord::Base
    belongs_to :question, inverse_of: :sub_questions

    default_scope { order(position: :asc) }

    validates :question, presence: true
    validates :question_text, presence: true
    validates :question_text, uniqueness: { scope: :question_id }
    validates :code, presence: true
    validates :code, uniqueness: { scope: :question_id }
  end
end