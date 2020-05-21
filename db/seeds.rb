10.times do |blog|
  Blog.create!(
    title: "乃木坂推しメン #{blog}",
    body: "生田絵梨花"
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "乃木坂4期生 #{skill}",
    percent_utilized: 96
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "乃木坂推しメン２ #{portfolio_item}",
    subtitle: "乃木坂4期生",
    body: "遠藤さくら",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portgolio created"