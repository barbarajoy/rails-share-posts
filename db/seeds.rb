User.destroy_all
Post.destroy_all
Comment.destroy_all

User.create!(email: "john@mail.com", password: "test123", nickname: "johnlennon")
User.create!(email: "joan@mail.com", password: "test123", nickname: "joanjett")
User.create!(email: "kurt@mail.com", password: "test123", nickname: "kurtcobain")
User.create!(email: "roger@mail.com", password: "test123", nickname: "rogerwaters")
User.create!(email: "janis@mail.com", password: "test123", nickname: "janisjoplin")
User.create!(email: "jim@mail.com", password: "test123", nickname: "jimmorrison")
User.create!(email: "jimmy@mail.com", password: "test123", nickname: "jimmypage")
User.create!(email: "george@mail.com", password: "test123", nickname: "georgeharrison")
User.create!(email: "david@mail.com", password: "test123", nickname: "davidbowie")

users = User.all.to_a
random_user = users.sample

Post.create!(
  title: "Why Web UI Development Is So Hard?",
  content: "Web UI development might appear straightforward at first glance, but delve deeper and you’ll discover a multitude of complexities that challenge even seasoned developers. This piece aims to dissect the inherent challenges of web UI development, from the discrepancy between web languages and the modern UI requirements, to intricate data management issues and asynchronous API calls.
  We'll also explore often-overlooked “unhappy paths” such as loading states, error handling, and broader architecture considerations encompassing security, performance, and accessibility.",
  image_url: "https://www.traininginbangalore.com/images/infographics/ui-development-training-in-bangalore-tib.jpg",
  user_id: random_user.id,
  url: "https://medium.com/itnext/why-web-ui-development-is-so-hard-a88c47f4b3c5"
)

Post.create!(
  title: "The Inevitable Decline Of TypeScript Has Begun",
  content: "Hang on. Where is my 'I told you so' banner? Ahh, there we go. Under the bed. I knew it would come in handy someday! 😁 Jokes aside, the TLDR of this story is as simple and as straightforward as I imagined it would be when the time came. Major players in the software engineering field are ditching TypeScript, for the very same reasons I never became much of a fan: polluted code with type gymnastics, extra compilation/build time and other practical reasons.
  The likes of Svelte, SvelteKit and Turbo 8 are all doing the diametrically opposite of what most web developers were expecting — either seeking alternatives to TS or ditching it completely. This might sound shocking to many, but the reasons are all exactly what I expected, rooted in real-world pragmatism — something that often eludes overly zealous software engineers, who prefer doing things for the sake of tech and tech alone. The story of TypeScript is a bit like that.",
  image_url: "https://miro.medium.com/v2/resize:fit:2000/0*P_fFqIvdVbgC2yed",
  user_id: random_user.id,
  url: "https://medium.com/gitconnected/the-inevitable-decline-of-typescript-has-begun-22e4899d0ae1"
)

Post.create!(
  title: "“Good Commit” vs “Your Commit”: How to Write a Perfect Git Commit Message",
  content: "Years ago, I never realized there were specific rules for writing commit messages until my curiosity got the best of me. I used to think that straightforward messages like “added feature 2,” “fixed the bug on the Main Navigation bar,” or even “foo” were sufficient. The conviction that commit messages went largely unread proved mistaken. In reality, well-crafted commit messages are indispensable, ensuring that our future selves benefit from our diligence and thoughtfulness.",
  image_url: "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*ZHn1-9eTq-u47gUpYGMiZQ.png",
  user_id: random_user.id,
  url: "https://medium.com/gitconnected/good-commit-vs-your-commit-how-to-write-a-perfect-git-commit-message-6e96ab6357fa"
)

Post.create!(
  title: "10 essential VS Code tips & tricks for greater productivity",
  content: "Did you know that 73% of developers worldwide depend on the same code editor?
  Yes, the 2023 Stack Overflow Developer Survey results are in, and yet again, Visual Studio Code was by far the most used development environment.
  And we all know why: it’s awesome. But are we fully exploring its potential? In this article, we unfold some compelling VS Code features that enhance productivity with local source control, animated typing, and rapid line deletion, amongst others. Let us start using them to achieve our coding goals faster than ever.",
  image_url: "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*HvlAecY7g3InBxrXby4emA.png",
  user_id: random_user.id,
  url: "https://medium.com/dev-genius/vscode-tips-tricks-98c6e2258626"
)

Post.create!(
  title: "Advice From a Software Engineer With 8 Years of Experience",
  content: "Hello, and welcome!
  My name is Benoit. I have been a software engineer for the past eight and a half years. I stayed at my previous (and first) company for seven and a half years, then I joined a new one in early 2022.
  This article comes from a recent self-reflection on the things I wish I had started doing earlier in my career and the things I wish I had done differently.
  What I am sharing here may be useful to any junior to mid-level developer who wishes to improve and progress toward the title of senior and beyond.",
  image_url: "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*r5coQ_IUZNe0yjOH7vq_6w.jpeg",
  user_id: random_user.id,
  url: "https://medium.com/better-programming/advices-from-a-software-engineer-with-8-years-of-experience-8df5111d4d55"
)

Post.create!(
  title: "The 7 Signs of a Bad Programmer",
  content: "There are many ways to be ineffective at a job. Here are a few that seem to be a running theme with some programmers I've worked with over the years:
  I'm a Software Engineer, not a Programmer
  You know what they're like. Mechanical keyboard in the office? Can't make the standup because they were thinking about that problem (it's 5 minutes to mention what you're thinking). How long did it take to get the latte?
  I'm not entirely certain how people can become so arrogant with 3 years of experience, but there you go.",
  image_url: "https://miro.medium.com/v2/resize:fit:1100/0*symRsb0c05pPC6BV",
  user_id: random_user.id,
  url: "https://medium.com/@tsecretdeveloper/the-7-signs-of-a-bad-programmer-a624204f7222"
)

posts = Post.all.to_a

15.times do
  random_post = posts.sample
  random_user = (users - [random_post.user]).sample
  Comment.create!(
    content: "Super Cool!",
    post: random_post,
    user: random_user
  )

  Comment.create!(
    content: "I've loved this article!",
    post: random_post,
    user: random_user
  )

  Comment.create!(
    content: "I'd love to know more about this subject.",
    post: random_post,
    user: random_user
  )

  Comment.create!(
    content: "Very interesting perspective!",
    post: random_post,
    user: random_user
  )

  Comment.create!(
    content: "This is a super important topic to discuss!",
    post: random_post,
    user: random_user
  )

  Comment.create!(
    content: "I didn't agree to this point of view",
    post: random_post,
    user: random_user
  )
end

puts "Voilà! You got your seeds!"
