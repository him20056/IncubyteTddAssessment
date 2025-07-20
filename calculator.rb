class Calculator

  def add(number_string)
    return 0 if number_string.empty?

    number_array = string_to_number_array(number_string)

    negative_num = number_array.select{|num| num<0}

    if negative_num.any?
      raise Exception, "negative numbers not allowed #{negative_num.join(", ")}"
    end

    sum = 0

    number_array.each { |num| sum += num }

    return sum
  end

  def string_to_number_array(str)
    delimiter = ","

    if str.start_with?("//")
      str = str[2..]
      delimiter = str.split("\n")[0]
    end

    num_array = str.split(/[\n#{delimiter}]/)

    num_array.map(&:to_i)
  end

end
