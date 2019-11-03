class Kind < ApplicationRecord
  enum periodic: { daily: 0, monthly: 1, yearly: 2 }
end
