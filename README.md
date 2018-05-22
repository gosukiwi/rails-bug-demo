# Demo of `optional: true` issue

Given this code:

```ruby
class Page < ApplicationRecord
  belongs_to :book
end

class SpecialPage < Page
  belongs_to :book, optional: true
end
```

I expect `SpecialPage.new.valid?` to be `true`, but it's `false`. To make it
`true`, I need to add `optional: true` to `Page`.

```ruby
class Page < ApplicationRecord
  belongs_to :book, optional: true
end

class SpecialPage < Page
  belongs_to :book, optional: true
end
```
