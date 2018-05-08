def add(num1, num2)
    return num1+num2
end

def multiply(num1, num2)
    return num1*num2
end

def divide(num1, num2)
    return num1/num2
end

def subtract(num1, num2)
    return num1 - num2
end

def power(num1, num2)
    return num1 ** num2
end

def sqroot(num1, num2)
    return "square root of #{num1} = #{Math.sqrt(num1)} >>> square root of #{num2} = #{Math.sqrt(num2)}"
end

def bmi_metric(height, weight)
    return (weight) / (height * height)
end

def bmi_imperial(height, weight)
    return (weight * 9840) / (height * height)
end

print "Select (b)asic or (a)dvanced calculator, bm(i): "
user_option = gets.chomp

if user_option == "b"
    print "Select (a)dd, (m)ultiply, (d)ivide or (s)ubtract: "
    math = gets.chomp

    print "Enter first number: "
    first_number = gets.chomp.to_f

    print "Enter second number: "
    second_number = gets.chomp.to_f

    if(math == "a")
        answer = add(first_number, second_number)
        puts "#{first_number} + #{second_number} = #{answer}"
    elsif(math == "m")
        answer = multiply(first_number, second_number)
        puts "#{first_number} * #{second_number} = #{answer}"
    elsif(math == "d")
        answer = divide(first_number, second_number)
        puts "#{first_number} / #{second_number} = #{answer}"
    elsif(math == "s")
        answer = subtract(first_number, second_number)
        puts "#{first_number} - #{second_number} = #{answer}"
    end
end

if user_option == "a"
    print "Select (a)dd, (m)ultiply, (d)ivide, (s)ubtract, (p)ower or (sq)root: "
    math = gets.chomp

    print "Enter first number: "
    first_number = gets.chomp.to_f
    
    print "Enter second number: "
    second_number = gets.chomp.to_f

    if(math == "a")
        answer = add(first_number, second_number)
        puts "#{first_number} + #{second_number} = #{answer}"
    elsif(math == "m")
        answer = multiply(first_number, second_number)
        puts "#{first_number} * #{second_number} = #{answer}"
    elsif(math == "d")
        answer = divide(first_number, second_number)
        puts "#{first_number} / #{second_number} = #{answer}"
    elsif(math == "s")
        answer = subtract(first_number, second_number)
        puts "#{first_number} - #{second_number} = #{answer}"
    elsif(math == "p")
        answer = power(first_number, second_number)
        puts "#{first_number} ^ #{second_number} = #{answer}"
    elsif(math == "sq")
        answer = sqroot(first_number, second_number)
        puts answer
    end
end

if user_option == "i"
    print "(i)mperial or (m)etric"
    choice = gets.chomp
    
    if choice == "m"
        print "Enter height in (m): "
        height = gets.chomp.to_f
        print "Enter weight in (kg): "
        weight = gets.chomp.to_f
        puts bmi_metric(height, weight)
    end

    if choice == "i"
        print "Enter height in (inch): "
        height = gets.chomp.to_f
        print "Enter weight in (st): "
        weight = gets.chomp.to_f
        puts bmi_imperial(height, weight)
    end
end




