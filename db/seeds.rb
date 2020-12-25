# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Genre.any?
  [
    "Ambient", "Anthem", "Bluegrass", "Blues", "Children", "Cinematic", "Classical",
    "Comedy", "Country", "Dance", "Disco", "Downtempo", "Drama", "Electronic",
    "Emotional", "Epic", "Ethereal", "Experimental", "Folk", "Funk", "Game Show",
    "Hip Hop", "Holiday", "Hopeful", "Indie", "Jazz", "Latin", "Lounge", "Metal",
    "Mnemonic", "Organic", "Polka", "Pop", "Punk", "Quirky", "R&B / Soul", "Religious",
    "Retro", "Rock", "Rock / Pop", "Soft Rock", "Soul", "Soundscape", "Sports", "Surf",
    "Unknown", "Western", "World"
  ].each do |genre|
    Genre.find_or_create_by(name: genre)
  end
end

unless Mood.any?
  [
   "Adventurous", "Aggressive", "Ambient", "Bizarre", "Bright", "Calm", "Carefree",
   "Cheerful", "Cheesy", "Chill", "Cinematic", "Classy", "Confident", "Contemplative",
   "Cool", "Cute", "Dark", "Determined", "Dirty", "Dramatic", "Dreamy", "Driving",
   "Eclectic", "Eerie", "Elegant", "Emotional", "Energetic", "Epic", "Ethereal",
   "Exciting", "Experimental", "Festive", "Fun", "Gentle", "Goofy", "Grandiose",
   "Gritty", "Happy", "Heavy", "Honest", "Hopeful", "Inspirational", "Inspiring",
   "Intense", "Intimate", "Introspective", "Laid Back", "Light", "Lonely", "Magical",
   "Melancholy", "Minimal", "Mnemonic", "Moody", "Motivating", "Moving", "Mysterious",
   "Nostalgic", "Optimistic", "Organic", "Peaceful", "Playful", "Positive", "Powerful",
   "Quirky", "Rebellious", "Reflective", "Relaxed", "Retro", "Romantic", "Rugged", "Sad",
   "Sassy", "Satisfied", "Scary", "Sentimental", "Serious", "Sexy", "Sleazy", "Somber",
   "Spacious", "Spiritual", "Strange", "Suspenseful", "Tense", "Tough", "Upbeat",
   "Uplifting", "Vintage", "Whimsical", "Youthful"
  ].each do |mood|
    Mood.find_or_create_by(name: mood)
  end
end
