class Feedback < ApplicationRecord
  enum tag: { feature: 0, ui: 1, ux: 2, enhancement: 3, bug: 4 }
end
