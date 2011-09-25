# By using the symbol ':episode', we get Factory Girl to simulate the Episode model.
Factory.define :episode do |user|
  episode.season              1
  episode.episode_number      1
  episode.title              "foobar"
end

Factory.sequence :episode do |n|
  n
end

Factory.define :review do |micropost|
  review.content "Foo bar"
  review.association :episode
end