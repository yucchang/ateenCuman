require 'rails_helper'

feature 'Create task' do
  scenario 'Successfully add new task' do
    visit new_task_path

    fill_in 'Title', with: 'Test'
    within '.task_beginning_at' do
      find("option[value='2020']").select_option
      find("option[value='1']", text: 'January').select_option
      find("option[value='1']", text: '1').select_option
    end
    within '.task_due_at' do
      find("option[value='2020']").select_option
      find("option[value='1']", text: 'January').select_option
      find("option[value='1']", text: '1').select_option
    end
    select 'Mid', from: 'Priority'
    select 'Pending', from: 'Status'
    fill_in 'Content', with: 'task content'
    click_on('Create Task')

    expect(page).to have_current_path('/')
    expect(page).to have_content('Task created.')
    expect(Task.count).to eq 1
  end
end

feature 'Read task' do
  scenario 'view task detail' do
    task_1 = Task.create!(title: 'Test')
    visit tasks_path

    click_link task_1.title

    expect(current_path).to eq(task_path(task_1))
    expect(page).to have_selector 'h2', text: 'Test'
    expect(page).to have_selector 'table'
  end
end

feature 'Update task' do
  scenario 'edit a task' do
    task_1 = Task.create!(title: 'Test')
    visit tasks_path
    click_link 'Edit'

    visit edit_task_path(task_1)
    fill_in 'Title', with: 'Ongoing task'
    click_on('Update Task')

    expect(page).to have_current_path('/')
    expect(page).to have_content('Task updated.')
    expect(task_1.title == 'Ongoing task')
  end
end

feature 'Delete task' do
  scenario 'remove certain task' do
    task_1 = Task.create!(title: 'Test')
    visit tasks_path
    click_on('Delete')

    expect(page).to have_content('Task deleted.')
    expect(Task.count).to eq 0
  end
end
