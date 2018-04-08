

When(/^add a budget with month "([^"]*)" and amount (\d+)$/) do |arg1, arg2|
  touch "Budgets"
  touch "Add"
  clear_then_enter_text "month",arg1
  clear_then_enter_text "amount",arg2
  touch "Save"
end

Then(/^the following budget will exist$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  wait_for_element_does_not_exist "Save"
  table.hashes.each do | row |
    wait_for_text row['month']
    wait_for_text row['amount']
  end
end