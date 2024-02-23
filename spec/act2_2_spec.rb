require 'act2_2'

RSpec.describe TodoList do
  let(:todo_list) { TodoList.new }
  let(:todo1) { "Do homework." }
  let(:todo2) { "Dry the laundry." }

  describe "#add" do
    it "adds a todo to the list" do
      todo_list.add(todo1)
      expect(todo_list.todos).to include(todo1)
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list.add(todo1)
      todo_list.remove(todo1)
      expect(todo_list.todos).not_to include(todo1)
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list.add(todo1)
      todo_list.add(todo2)
      expect(todo_list.todos).to eq([todo1, todo2])
    end
  end
end
