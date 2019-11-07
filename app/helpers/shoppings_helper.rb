module ShoppingsHelper

  def shopping_status_color shopping
    'color: red;' if shopping.open?
    'color: green;' if shopping.done?
  end

end
