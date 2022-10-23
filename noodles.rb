def cook_calculate
  noodlesTime = ARGV[0].to_i
  hourGlass1 = ARGV[1].to_i
  hourGlass2 = ARGV[2].to_i

  totalTime = 0
  auxHourGlass1 = hourGlass1
  auxHourGlass2 = hourGlass2

  difference = nil

  while difference != 0
    if auxHourGlass1 < auxHourGlass2
      difference = auxHourGlass2 - auxHourGlass1
      totalTime += auxHourGlass1
      auxHourGlass1 = hourGlass1
      auxHourGlass2 = difference
    else
      difference = auxHourGlass1 - auxHourGlass2
      totalTime += auxHourGlass2
      auxHourGlass1 = difference
      auxHourGlass2 = hourGlass2
    end

    if difference == noodlesTime
      totalTime += noodlesTime
      return puts "Time needed to prepare: #{totalTime}"
    end
  end

  return puts "Can't cook in exact time."
end

cook_calculate