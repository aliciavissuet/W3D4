class Response < ApplicationRecord
  validates :answer_choice_id, presence: true
  validates :question_id, presence: true
  validates :user_id, presence: true
  validate :no_previous_responses

  def no_previous_responses
    raise "Already answered" if respondent_already_answered?
  end

  def sibling_responses
    return self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.exists?(user_id: self.user_id)
  end 

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

    belongs_to :respondent,
      primary_key: :id,
      foreign_key: :user_id,
      class_name: :User

    has_one :question,
      through: :answer_choice,
      source: :question
end
