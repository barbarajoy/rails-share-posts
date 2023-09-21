User.destroy_all
Post.destroy_all

User.create!(email: "test@mail.com", password: "test123", nickname: "test")
User.create!(email: "barbara@mail.com", password: "test123", nickname: "barbara")
User.create!(email: "kurt@mail.com", password: "test123", nickname: "kurtcobain")
User.create!(email: "roger@mail.com", password: "test123", nickname: "rogerwaters")
User.create!(email: "janis@mail.com", password: "test123", nickname: "janisjoplin")
User.create!(email: "jim@mail.com", password: "test123", nickname: "jimmorrison")

users = User.all.to_a
random_user = users.sample

Post.create!(
  title: "Why Web UI Development Is So Hard?",
  content: "Web UI development might appear straightforward at first glance, but delve deeper and you’ll discover a multitude of complexities that challenge even seasoned developers. This piece aims to dissect the inherent challenges of web UI development, from the discrepancy between web languages and the modern UI requirements, to intricate data management issues and asynchronous API calls.
  We'll also explore often-overlooked “unhappy paths” such as loading states, error handling, and broader architecture considerations encompassing security, performance, and accessibility.",
  url: "https://www.traininginbangalore.com/images/infographics/ui-development-training-in-bangalore-tib.jpg",
  user_id: random_user.id
)

Post.create!(
  title: "The Inevitable Decline Of TypeScript Has Begun",
  content: "Hang on. Where is my 'I told you so' banner? Ahh, there we go. Under the bed. I knew it would come in handy someday! 😁 Jokes aside, the TLDR of this story is as simple and as straightforward as I imagined it would be when the time came. Major players in the software engineering field are ditching TypeScript, for the very same reasons I never became much of a fan: polluted code with type gymnastics, extra compilation/build time and other practical reasons.
  The likes of Svelte, SvelteKit and Turbo 8 are all doing the diametrically opposite of what most web developers were expecting — either seeking alternatives to TS or ditching it completely. This might sound shocking to many, but the reasons are all exactly what I expected, rooted in real-world pragmatism — something that often eludes overly zealous software engineers, who prefer doing things for the sake of tech and tech alone. The story of TypeScript is a bit like that.",
  url: "https://miro.medium.com/v2/resize:fit:2000/0*P_fFqIvdVbgC2yed",
  user_id: random_user.id
)

Post.create!(
  title: "“Good Commit” vs “Your Commit”: How to Write a Perfect Git Commit Message",
  content: "Years ago, I never realized there were specific rules for writing commit messages until my curiosity got the best of me. I used to think that straightforward messages like “added feature 2,” “fixed the bug on the Main Navigation bar,” or even “foo” were sufficient. The conviction that commit messages went largely unread proved mistaken. In reality, well-crafted commit messages are indispensable, ensuring that our future selves benefit from our diligence and thoughtfulness.",
  url: "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*ZHn1-9eTq-u47gUpYGMiZQ.png",
  user_id: random_user.id
)

Post.create!(
  title: "10 essential VS Code tips & tricks for greater productivity",
  content: "Did you know that 73% of developers worldwide depend on the same code editor?
  Yes, the 2023 Stack Overflow Developer Survey results are in, and yet again, Visual Studio Code was by far the most used development environment.
  And we all know why: it’s awesome. But are we fully exploring its potential? In this article, we unfold some compelling VS Code features that enhance productivity with local source control, animated typing, and rapid line deletion, amongst others. Let us start using them to achieve our coding goals faster than ever.",
  url: "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*HvlAecY7g3InBxrXby4emA.png",
  user_id: random_user.id
)

puts "Voilà! You got your seeds!"
