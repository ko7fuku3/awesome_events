FactoryBot.define do
  factory :event do
    owner
    # sequence(:name){|i|"イベント名#{i}"}
    # sequence(:place){|i|"イベント開催場所#{i}"}
    # sequence(:content){|i|"イベント本文#{i}"}
    name{"name#{rand(1..100)}"}
    place{"place#{rand(1..100)}"}
    content{"content#{rand(1..100)}"}
    start_at{rand(1..30).days.from_now}
    end_at{start_at + rand(1..30.hours)}
  end
end
