def balanced_brackets?(string)
    stack,pairs = [], ['()','[]','{}']
    string= string.split('').select {|v| v =~ /[()\[\]{}]/ }
    string.each_index do |i| 
      x= string[i]
      if stack.empty? && i== 0 
        stack.push(x) 
        next
      end
      y = stack[-1]
      pair= [y,x].join
      pairs.include?(pair) ? stack.pop : stack.push(x)
    end
    stack.empty? ? true : false
  end
  