3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "乃木坂推しメン #{blog}",
    body: "生田絵梨花",
    topic_id: Topic.last.id
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

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "乃木坂1期生",
    body: "生田絵梨花",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "乃木坂4期生",
    body: "遠藤さくら",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portgolio created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "山下美月 #{technology}",

    )
end

puts "3 technologies created"