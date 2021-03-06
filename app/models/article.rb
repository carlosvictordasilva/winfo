class Article < ActiveRecord::Base
  validates :title, :body, presence: true
  attr_accessible :title, :body

  has_many :likes
  belongs_to :user
  delegate :name, to: :user


  def summary_body
    my_body = body
    "#{my_body[0...500]}..." if my_body
  end

  def posted_at
   	created_at.strftime("Postado em %d %b %Y")
  end

  def posted_entry
   	created_at.strftime("%d %b %Y")
  end

end
