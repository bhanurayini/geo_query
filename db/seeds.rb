organizations = JSON.parse(open('db/data/organization.json').read)
programs = JSON.parse(open('db/data/program.json').read)
locations = JSON.parse(open('db/data/location.json').read)

organizations.each do |o|
  Organization.create!(o)
end

programs.each do |p|
  Program.create!(p)
end

locations.each do |l|
  Location.create!(l)
end
