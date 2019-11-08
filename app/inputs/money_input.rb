class MoneyInput < SimpleForm::Inputs::StringInput
  def input
    ' CHF ' + super
  end
end