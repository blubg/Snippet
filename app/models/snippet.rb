class Snippet < ActiveRecord::Base

  validates :kind, presence: true
  validates :title,  presence: true
  validates :work,  presence: true


  def self.search(query)
    where("kind ILIKE ? OR title ILIKE ? OR work ILIKE ?",
            "%#{query}%", "%#{query}%", "%#{query}%")
  end

end
