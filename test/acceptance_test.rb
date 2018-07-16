require_relative "helper"

class AcceptanceTest < Spring::Test::AcceptanceTest
end

at_exit do
  puts ?- * 100

  $times.sort_by {|time| - time[:time] }.each do |command:, time:|
    puts "`#{command}`\t#{Time.now - start_time}"
  end

  puts ?- * 100
end
