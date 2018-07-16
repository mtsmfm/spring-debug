require_relative "helper"

class AcceptanceTest < Spring::Test::AcceptanceTest
end

Minitest.after_run do
  puts ?- * 100

  $times.sort_by {|time| - time[:time] }.each do |time|
    puts "`#{time[:command]}`\t#{time[:time]}"
  end
end
