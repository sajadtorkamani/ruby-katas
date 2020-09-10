def map(nums, func)
  return 'given argument is not a function' unless func.is_a? Proc

  begin
    nums.map { |num| func.call(num) }
  rescue ArgumentError
    'array should contain only numbers'
  end
end
