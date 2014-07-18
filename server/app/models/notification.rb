class Notification < ActiveRecord::Base
  def readonly?
    !new_record?
  end

  belongs_to :tracker
end
