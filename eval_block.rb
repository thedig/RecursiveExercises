def eval_block(*args, &prc)
  return puts "NO BLOCK GIVEN" if prc.nil?
  prc.call(*args)
end