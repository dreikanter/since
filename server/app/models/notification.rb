class Notification < ActiveRecord::Base
  def readonly?
    !new_record?
  end

  validates_format_of :secret, with: /\A[a-z\d_-]{1,100}$\z/i

  belongs_to :tracker
end
