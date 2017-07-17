class TodoList
  def initialize(array)
    @list_items = array
  end

  def get_items
    @list_items
  end

  def add_item(item)
    @list_items << item
  end

  def delete_item(item)
    @list_items.delete(item)
    @list_items
  end

  def get_item(index)
    @list_items[index]
  end

end