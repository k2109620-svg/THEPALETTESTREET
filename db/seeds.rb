Tag.create([
  { name: 'ジャンル1' },
  { name: 'ジャンル2' },
  { name: 'ジャンル3' },
  { name: 'ジャンル4' },
  { name: 'ジャンル5' }
])
User.create!(
  [
    {
      name:  "けん",
      email: "kentaro1005w@icloud.com",
      password:  "thepale0501",
      password_confirmation: "thepale0501",
      admin: true
    },
    {
      name:  "かずき",
      email: "kazuki14261026@icloud.com",
      password:  "thepale0501",
      password_confirmation: "thepale0501",
      admin: true
    },
    {
      name:  "れいと",
      email: "reito0110@au.com",
      password:  "thepale0501",
      password_confirmation: "thepale0501",
      admin: true
    },
    {
      name:  "しゅん",
      email: "shuntaro2006@gmail.com",
      password:  "thepale0501",
      password_confirmation: "thepale0501",
      admin: true
    },
    {
      name:  "かおる",
      email: "kaerumoti13579@outlook.jp",
      password:  "kk1234",
      password_confirmation: "kk1234",
      admin: true
    }
  ]
)