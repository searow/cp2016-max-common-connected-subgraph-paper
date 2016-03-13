#!/usr/bin/ruby
# vim: set sw=4 sts=4 et tw=80 :

buckets = Hash.new(0)

IO.readlines(ARGV[0]).each do | line |
    words = line.split(' ')

    x = words[1].to_f * 1000
    bx = if x < 1 then 0 else (100 * (Math.log(x + 0.1) / Math.log(3600000))).round end

    y = words[2].to_f
    by = if y < 1 then 0 else (100 * (Math.log(words[2].to_f + 0.1) / Math.log(3600000))).round end

    abort "bx is " + bx.to_s + " by is " + by.to_s if bx < 0 || bx > 100 || by < 0 || by > 100
    buckets[[bx, by]] += 1
end

0.upto 100 do | x |
    0.upto 100 do | y |
        print(buckets[[x, y]].to_s + " ")
    end
    puts
end
