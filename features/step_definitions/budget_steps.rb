

When(/^add a budget with month "([^"]*)" and amount (\d+)$/) do |arg1, arg2|
  touch "Budgets"
  touch "Add"
  clear_then_enter_text "month",arg1
  clear_then_enter_text "amount",arg2
  touch "Save"
end

Then(/^the following budget will exist$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end