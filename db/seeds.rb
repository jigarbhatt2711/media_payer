# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create ([
  {
    title: "abc",
    plot: "desc of plot abc movie"
  },
  {
    title: "def",
    plot: "desc of plot abc movie"
  },
  {
    title: "hij",
    plot: "desc of plot abc movie"
  }
])


Season.create ([
  {
    season_number: 1,
    title: "abc",
    plot: "desc of plot abc Season"
  },
  {
    season_number: 2,
    title: "def",
    plot: "desc of plot abc Season"
  },
  {
    season_number: 3,
    title: "hij",
    plot: "desc of plot abc Season"
  }
])

Episode.create ([
  {
    season_id: Season.first.id,
    title: "abc",
    episode_number: 1,
    plot: "desc of plot abc Episode"
  },
  {
    season_id: Season.last.id,
    title: "hij",
    episode_number: 2,
    plot: "desc of plot abc Episode"
  }
])


Episode.create ([
  {
    season_id: Season.first.id,
    episode_number: 3,
    parent_episode_id: Episode.first.id,
    title: "def",
    plot: "desc of plot abc Episode"
  }
])

User.create ([
  {
    email: "abc@gmail.com"
  },
  {
    email: "def@gmail.com"
  }
])

PurchaseOption.create ([
  {
    price: 2.99,
    video_quality: "HD"
  },
  {
    price: 2.99,
    video_quality: "SD"
  }
])

Purchase.create(purchasable: Movie.first, purchase_option_id: PurchaseOption.first.id, user_id: User.first.id)
