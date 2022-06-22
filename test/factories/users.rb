FactoryBot.define do
  factory :user, aliases: [:owner] do
    provider { "github" }
    # sequence(:uid) { |i| "uid#{i}" }
    uid{"uid#{rand(1..100)}"}
    sequence(:name) { |i| "name#{i}" }
    sequence(:image_url) { |i| "http://example.com/image#{i}.jpg" }
  end
end
