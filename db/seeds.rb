# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(100).each do |d|
  domain = Domain.find_or_create_by(name: "domain-#{d}.com")
  1.upto(20).each do |m|
    Mailbox.find_or_create_by(
      domain: domain,
      email: "mailbox-#{m}@#{domain.name}",
      password: "secret"
    )
  end
end
