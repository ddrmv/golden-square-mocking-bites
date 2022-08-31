class TaskFormatter
  def initialize(task)
    @task = task
  end

  def format
    complete_mark = @task.complete? ? "x" : " "
    return "- [#{complete_mark}] #{@task.title.capitalize}"
  end
end