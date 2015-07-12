class Post < ActiveRecord::Base

  validates :title, presence: true, format: {with: /\A\d/}
  before_save :upcase_all
  before_create :generate_content

  def to_s
    #"self.title"
    self.try(:title)
  end
protected

  

  def upcase_all
    title.try(:upcase!)
    content.try(:upcase!)
  end

  def generate_content
    self.content = title if content.blank?
  end

end