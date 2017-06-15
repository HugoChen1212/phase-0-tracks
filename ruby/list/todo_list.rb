class TodoList
  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(item)
    @array << item
  end

  def delete_item(item_name)
    @array.delete(item_name)
  end

  def get_item(i)
    @array[i]
  end

end