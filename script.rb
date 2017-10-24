#!/usr/bin/env ruby

def iterate(snums, svals = [])
    for i in 0..(snums.length-1)
        nums = snums.clone
        vals = svals.clone
        vals.push(nums.delete_at(i))
        if nums.empty?
            if (vals[0] * 10 + vals[1]) - (vals[2] * 10 + vals[3]) == (vals[4] * 10 + vals[5])
                puts vals
            end
        else
            iterate(nums, vals)
        end
    end
end

iterate([6, 5, 4, 3, 2, 1])
