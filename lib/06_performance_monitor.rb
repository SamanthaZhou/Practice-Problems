def measure (n=1, i=0)
  past = Time.now
  n.times{yield}
  current = Time.now
  elapsed_time = current-past
  elapsed_time/n
end
