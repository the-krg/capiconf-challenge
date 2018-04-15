class Display
  def print_number(size)
    case size
    when 1
      puts '1'
      return
    when 2
      display = 'a, b, d, e, g'
    when 3
      display = 'a, b, c, d, g'
    when 4
      display = 'b, c, f, g'
    when 5
      display = 'a, c, d, f, g'
    when 6
      display = 'a, c, d, e, f, g'
    when 7
      display = 'a, b, c'
    when 8
      display = 'a, b, c, d, e, f, g'
    when 9
      display = 'a, b, c, f, g'
    else
      display = ''
    end

    horizontal(size) if display.include? 'a'

    if display.include?('f') && display.include?('b')
      both_vertical(size)
    else
      left_vertical(size)   if display.include? 'f'
      right_vertical(size)  if display.include? 'b'
    end

    horizontal(size) if display.include? 'g'

    if display.include?('e') && display.include?('c')
      both_vertical(size)
    else
      left_vertical(size)   if display.include? 'e'
      right_vertical(size)  if display.include? 'c'
    end

    horizontal(size) if display.include? 'd'
  end

  private

  def horizontal(size)
    size.times do
      print size
    end
    print "\n"
  end

  def left_vertical(size)
    size.times do
      puts size
    end
  end

  def right_vertical(size)
    size.times do
      print "#{' '*(size-1)}#{size}\n"
    end
  end

  def both_vertical(size)
    size.times do
      print size
      print "#{' '*(size-1)}#{size}\n"
    end
  end
end

puts 'Digite um número de 1 a 9'
input = gets.to_i
system('clear')
Display.new.print_number(input)
