Merit.setup do |config|

end

badges = [
  {id: 1,
   name: "party starter badge",
   custom_fields: { image: "/event_1.png" }},
  { id: 2, name: 'Novice Commenter',
    custom_fields: { image: "/comment_1.png" }},
  { id: 3, name: 'Novice Rater',
    custom_fields: { image: "/rating_1.png" }},
  { id: 4, name: 'Hello popular',
    custom_fields: { image: "/add_friend_1.png" }}
]

badges.each do |badge|
  Merit::Badge.create!(badge)
end
