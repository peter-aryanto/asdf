class Item < ActiveRecord::Base
  before_validation :strip_whitespace
  before_save :strip_whitespace
  
  attr_accessible :date1, :date2, :desc, :price, :region, :title
  
  validates :title, :length => { :minimum => 3, :message => 'must be at least 3 characters' },
                    :uniqueness => { :message => 'The title has been used, please use another' }
                    
  validates :price, :numericality => { :greater_than_or_equal_to => 1, :message => 'must be valued at least 1' }
                    
  validates :desc, :length => { :minimum => 1, :message => 'is required' }
  
  def strip_whitespace
    unless self.title.nil?
      self.title.strip!
    end
    unless self.desc.nil?
      self.desc.strip!
    end
  end
end
