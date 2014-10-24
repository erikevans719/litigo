Then(/^I create the task$/) do
  visit '/tasks'
  click_on 'NEW TASK'
  fill_in 'task_name', with: 'My firs task'
  click_on 'Create Task'
  expect(page).to have_content('Task was successfully created.')
end

Then(/^The task for user with email "(.*?)" should be saved to the db$/) do |arg1|
  u = User.where(email: arg1).first
  expect(Task.where(id: u.id).first.name).to eq 'My firs task'
end