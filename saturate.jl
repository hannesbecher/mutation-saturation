


const mu::Float64 = 1/133


chrom = trues(100000)

function mutIf(a::Bool; mu=mu)
  if rand() < mu
    if a==false
      rand() < 0.75 ? true : false 
    else
      rand() < 0.25 ? false : true
    end
  else
    return(a)
  end
end

counts=zeros(Int,10000)
chrom = trues(10000)
for i in range(1,10000)
a = map(i -> mutIf(i), chrom)
counts[I] = sum(a)
chrom, a = a, chrom
end
using Plots
scatter(counts[1:10000])
