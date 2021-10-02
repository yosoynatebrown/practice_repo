


time_1 = Time.now


sleep(1)


time_2 = Time.now

total_time = time_2 - time_1


puts Time.at(total_time).strftime("%M minutes, %S seconds")
