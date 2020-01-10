require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
employees = response.parse

employees.each do |employee|
  puts "Name: #{employee["name"]}"
  puts "Job: #{employee["job_titles"]}"
  puts "Department: #{employee["department"]}"

  # salary_or_hourly 

if employee["salary_or_hourly"] == "salary"
   puts "salary: #{employee["annual_salary"]}"
else 
  puts "Typical Hours: #{employee["typical_hours"]}"
  puts "Hourly Rate: #{employee["hourly_rate"]}"
  puts "Estimated Salary: #{employee["estimated_salary"]}"
end 
  puts "=" * 30 
end 

