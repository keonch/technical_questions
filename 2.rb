def decode_string(s)
  k_stack = []
  str_stack = []

  i = 0
  while i < s.length

    # if digit, traverse for k value and push onto k_stack
    if "0123456789".include?(s[i])
      k = ""
      while "0123456789".include?(s[i])
        k += s[i]
        i += 1
      end
      k_stack.push(k.to_i)
      i -= 1

    # if closing bracket, pop from str_stack for encoded_string
    # multiply the encoded_string with the last k value in k_stack
    elsif s[i] == "]"
      str = ""
      until str_stack[-1] == "["
        str += str_stack.pop
      end
      str_stack.pop
      str_stack.push(str * k_stack.pop)

    else
      str_stack.push(s[i])
    end

    i += 1
  end

  str_stack[0].reverse
end
