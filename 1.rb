def sort_by_strings(s,t)
  t_hsh = Hash.new
  t.each_char { |ch| t_hsh[ch] = 0 }

  s.each_char { |ch| t_hsh[ch] ? t_hsh[ch] += 1 : t_hsh[ch] = 1 }

  result = ""
  t_hsh.each { |ch, count| result += "#{ch * count}" }

  result
end
