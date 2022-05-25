# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id

  validates :date, presence: true

  scope :default_search, -> { where('date >= ?', Time.current) }

  # scope :search, -> (search_params) do
  #   return if search_params.blank?

  #   date(search_params[:date])
  #     .time_from(search_params[:time_from])
  #     .time_to(search_params[:time_to])
  # end

  # scope :date, -> (date) { where('date LIKE ?', "%#{date}%") if date.present? }
  # scope :time_from, -> (from) { where('? <= start_time', from) if from.present? }
  # scope :time_to, -> (to) { where('end_time <= ?', to) if to.present? }
end
