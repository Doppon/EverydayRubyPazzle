M, N = 10,100
# M = 10
# N = gets.to_i

def check(remain, pre)
  # 配置する人がいなくなると終了
  # return 0 if remain < 0
  # return 1 if remain == 0

  if remain < 0
    return 0
  end
  if remain == 0
    return 1
  end

  cnt = 0
  # 予定では2が入る予定
  pre.upto(M) do |i| # テーブルに配置する人
  # 2~100まで処理を行う
    cnt += check(remain-i, i)
    # puts remain
    # puts cnt
    # puts "--------"
  end
  cnt
end

print check(N, 2)
print "通り\n"
