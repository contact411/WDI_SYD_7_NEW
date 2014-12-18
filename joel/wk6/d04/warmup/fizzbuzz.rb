def fz(n)
    d3 = (n % 3 == 0)
    d5 = (n % 5 == 0)
    case
        when d3 && d5
            puts "FizzBuzz"
        when d3
            puts "Fizz"
        when d5
            puts "Buzz"
        else 
            puts n
    end
end
(1..100).each {|n| fz n}