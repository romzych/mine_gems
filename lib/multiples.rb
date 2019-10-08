def is_multiple_of_3_or_5?(n)

    if n % 3 == 0 || n % 5 == 0
        return true
    else
        return false
    end 

end

def sum_of_3_or_5_multiples(final_number)

    if final_number % 1 != 0 || final_number < 0 || final_number.class == String
        return "Yo ! Je ne prends que les entiers naturels. TG"
    else
        i = 0
        count_sum_of = 0
        until i == final_number
            if is_multiple_of_3_or_5?(i)
                count_sum_of = count_sum_of + i
                i = i + 1
            else
                i = i + 1
            end
        end
        return count_sum_of
    end
end

final_number = -1
puts sum_of_3_or_5_multiples(final_number)