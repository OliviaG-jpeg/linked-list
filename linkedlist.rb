module LinkedList
  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
  end

  class Stack
    def initialize
      @head = nil
    end

    def push(value)
      @head = Node.new(value, @head)
    end
    alias_method :"<<", :push

    def pop
      raise "nil\n" if is_empty?
      print "#{@head.value} -->"
      print_values(@head.next_node)
    end

    def is_empty?
      @head.nil?
    end

    def reverse_list(list)
    # ADD CODE HERE

    while list
        # ADD CODE HERE
        list = list.next_node
    end

    # ADD CODE HERE
end

  end
end

stack = LinkedList::Stack.new

stack << 37
stack << 99
stack << 12

stack.pop
stack.reverse_list
stack.pop