class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class LinkedList
    #setup head and tail
    attr_accessor :head, :tail
    
    def initialize
      @head,@tail = nil
    end
    
    def add(number)
      new_node = Node.new(number)
      new_node.next_node = nil
      if @head.nil? 
        @head = new_node
      else
        last = @head
        while(last.next_node)
          last = last.next_node
        end
        last.next_node = new_node
      end
     
    end
  
    def get(index)
      current_node = @head
      index.times do
        current_node = current_node.next_node
        return false unless current_node
      end
      current_node.value
    end
  end
  

  