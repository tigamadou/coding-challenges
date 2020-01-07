def fairRations(b)
    loaf=0
(b.size).times do |x|
  next unless b[x].odd?
      return 'NO' if b[x+1]==nil
      b[x],b[x+1]=b[x]+1,b[x+1]+1
      loaf +=2
  end
  return loaf
end
