# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

doggo = User.new(username: 'doggo')
catto = User.new(username: 'catto')
ratto = User.new(username: 'ratto')
pikachu = User.new(username: 'pikachu')
frank = User.new(username: 'Frank')

art1 =  Artwork.new(title: 'Biscuits', image_url: 'woof.com', artist_id: doggo.id)
art2 =  Artwork.new(title: 'Fish', image_url: 'meow.com', artist_id: catto.id)
art3 =  Artwork.new(title: 'Fromage', image_url: 'squeak.com', artist_id: ratto.id)
art4 =  Artwork.new(title: 'Self Portrait', image_url: 'pokemon.com', artist_id: pikachu.id)
art5 =  Artwork.new(title: 'End of the worlds', image_url: 'rapture.com', artist_id: frank.id)

share1 = ArtworkShare.new(artwork_id: art5.id, viewer_id: pikachu.id)
share2 = ArtworkShare.new(artwork_id: art2.id, viewer_id: ratto.id)
share3 = ArtworkShare.new(artwork_id: art1.id, viewer_id: frank.id)
