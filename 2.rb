def decode_string(s)
  stack = []
  i = 0
  while i < s.length
    if s[i] == "]"
      str = ""
      k = ""
      until stack[-1] == "["
        str = stack.pop + str
      end
      stack.pop
      while stack.length > 0 && '1234567890'.include?(stack[-1])
        k = stack.pop + k
        p stack
      end
      k.to_i.times { |_| stack.push(str) }
    else
      stack.push(s[i])
    end
    i += 1
  end
  stack.join("")
end
