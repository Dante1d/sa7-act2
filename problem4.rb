def reverse_file(input_file, output_file)
  begin
    content = File.read(input_file)
    reversed_content = content.reverse
    File.open(output_file, "w") { |file| file.write(reversed_content) }
    puts "File successfully reversed and written to #{output_file}"
  rescue Errno::ENOENT
    puts "Error: input file '#{input_file}' not found."
  rescue => e
    puts "An error occurred: #{e.message}"
  end
end

reverse_file("input.txt", "output.txt")
