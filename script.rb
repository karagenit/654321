#!/usr/bin/env ruby

nums = [1, 2, 3, 4, 5, 6]

for i in 0..5
    anums = nums.clone
    a = anums.delete_at(i)
    for j in 0..4
        bnums = anums.clone
        b = bnums.delete_at(j)
        for k in 0..3
            cnums = bnums.clone
            c = cnums.delete_at(k)
            for l in 0..2
                dnums = cnums.clone
                d = dnums.delete_at(l)
                for m in 0..1
                    enums = dnums.clone
                    e = enums.delete_at(m)
                    f = enums.delete_at(0)
                    #puts "#{a} #{b} #{c} #{d} #{e} #{f}"
                    if (a * 10 + b) - (c * 10 + d) == (e * 10 + f)
                        puts "#{a * 10 + b} - #{c * 10 + d} = #{e * 10 + f}"
                    end
                    #nums = [1, 2, 3, 4, 5, 6]
                end
            end
        end
    end
end
