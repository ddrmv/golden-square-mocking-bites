# testing TaskFormatter using mock Task

require
 'task_formatter'

RSpec.describe TaskFormatter do
  it "formats a complete task" do
    fake_task = double(:task)
    allow(fake_task).to receive(:complete?).and_return(true)
    allow(fake_task).to receive(:title).and_return("TASK TITLE")
    task_formatter = TaskFormatter.new(fake_task)
    expect(task_formatter.format).to eq "- [x] Task title"
  end

  it "formats an non-complete task" do
    fake_task = double(:task)
    allow(fake_task).to receive(:complete?).and_return(false)
    allow(fake_task).to receive(:title).and_return("task title")
    task_formatter = TaskFormatter.new(fake_task)
    expect(task_formatter.format).to eq "- [ ] Task title"
  end
end