class SpecialPage < Page
  belongs_to :book, optional: true
end
