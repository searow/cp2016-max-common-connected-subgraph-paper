#!/usr/bin/ruby
# vim: set sw=4 sts=4 et tw=80 :

buckets = Hash.new(0)
granularity = 100

xmul = ARGV[3].to_i
ymul = ARGV[4].to_i

IO.readlines(ARGV[0]).each_with_index do | line, index |
    if index == 0 then next end
    words = line.split(' ')

    x = words[ARGV[1].to_i].sub('1e10', (3600 / xmul).to_s).to_f * xmul
    bx = if x < 1 then 0 else (granularity * (Math.log(x + 0.1) / Math.log(3600000))).round end

    y = words[ARGV[2].to_i].sub('1e10', (3600000 / ymul).to_s).to_f * ymul
    by = if y < 1 then 0 else (granularity * (Math.log(y + 0.1) / Math.log(3600000))).round end

    abort "bx is " + bx.to_s + " by is " + by.to_s if bx < 0 || bx > granularity || by < 0 || by > granularity
    buckets[[bx, by]] += 1
end

0.upto granularity do | x |
    0.upto granularity do | y |
        print(buckets[[x, y]].to_s + " ")
    end
    puts
end
