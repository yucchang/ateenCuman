require 'rails_helper'

feature 'Task CRUD' do

  scenario 'create task' do
    visit new_task_path
    fill_in 'Title', with: 'task'
    select 'Mid', from: 'Priority'
    select 'Pending', from: 'Status'
    fill_in 'Content', with: 'task content'
    click_button 'Create Task'

    expect(page).to have_text('Task created.')
  end
end
