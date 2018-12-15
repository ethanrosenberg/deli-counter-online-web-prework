$ticket  = 1


def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    start = "The line is currently: "
  
    #katz_deli.each_with_index {|item, i| puts "#{i+1}. #{item} "}
    
    katz_deli.each_with_index {|item, i| start << "#{i+1}. #{item} "}
    
    puts start.strip!
    
  end
end

def take_a_number(katz_deli)
    #katz_deli should now be an array of tickets numbers
    linenumber = katz_deli.count + 1
    
    katz_deli.push($ticket)
    #linenumber = katz_deli.index(new_customer_name) + 1
    
    puts "Welcome, you are ticket number #{$ticket}. You are number #{linenumber} in line."
    
    $ticket += 1
    
    
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

line = []

take_a_number(line)

take_a_number(line)
now_serving(line)
now_serving(line)
take_a_number(line)
now_serving(line)

