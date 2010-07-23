Factory.sequence :email do |n|
  "some_person#{n}@place.com"
end

Factory.define :user do |f|
  f.email { Factory.next(:email) }
  # f.association :organization, :factory => :organization
end
