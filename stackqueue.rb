class MyQueue
  def initialize
    @store = []
  end

  def enqueue(ele)
    @store.unshift(ele)
  end

  def dequeue(ele)
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

end



class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(ele)
    @store << ele
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

end





class StackQueue

  def initialize
    @in_box = MyStack.new
    @out_box = MyStack.new
  end

  def pop
    transfer if out_box.empty?

    @out_box.pop
  end

  def push(ele)
    @in_box << ele
  end

  def peek
    transfer if out_box.empty?

    @out_box.peek
  end

  def size
    @in_box.size + @out_box.size
  end

  def empty?
    @out_box.empty? && @in_box.empty?
  end

  private

  def transfer
    until in_box.empty?
      out_box.push(in_box.pop)
    end
  end
end
