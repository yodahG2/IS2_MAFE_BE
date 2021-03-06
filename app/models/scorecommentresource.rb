# == Schema Information
#
# Table name: scorecommentresources
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  commentresource_id :integer
#  negative           :integer
#  positive           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Scorecommentresource < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :commentresource, required: false
	scope :exist, ->(params,params1){where("user_id = ? AND commentresource_id = ?",params,params1)}
end
