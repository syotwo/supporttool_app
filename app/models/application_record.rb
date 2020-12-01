class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :recent, -> { order(created_at: :desc) }
  scope :digital_category, -> { where('list_name like ? or list_name like ?','%brain%','%脳%') }
  scope :sleep_category, -> { where('list_name like ? or list_name like ?','%Sleep%','%ベッド%') }
  scope :creative_category, -> { where('list_name like ? or list_name like ?','%Creative%','%クリエイティブ%') }
  scope :daily_category, -> { where('list_name like ? or list_name like ?','%daily%','%ケア%') }  
  scope :reducestress_category, -> { where('list_name like ? or list_name like ?','%stress%','%ストレス%') }  
  scope :focus_category, -> { where('list_name like ? or list_name like ?','%focus%','%フォーカス%') }  
  
  
end
