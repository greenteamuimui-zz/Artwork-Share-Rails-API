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

doggo = User.create(username: 'doggo')
catto = User.create(username: 'catto')
ratto = User.create(username: 'ratto')
pikachu = User.create(username: 'pikachu')
frank = User.create(username: 'Frank')

art1 =  Artwork.create(title: 'Biscuits', image_url: 'woof.com', artist_id: doggo.id)
art2 =  Artwork.create(title: 'Fish', image_url: 'meow.com', artist_id: catto.id)
art3 =  Artwork.create(title: 'Fromage', image_url: 'squeak.com', artist_id: ratto.id)
art4 =  Artwork.create(title: 'Self Portrait', image_url: 'pokemon.com', artist_id: pikachu.id)
art5 =  Artwork.create(title: 'End of the worlds', image_url: 'rapture.com', artist_id: frank.id)

share1 = ArtworkShare.create(artwork_id: art5.id, viewer_id: pikachu.id)
share2 = ArtworkShare.create(artwork_id: art2.id, viewer_id: ratto.id)
share3 = ArtworkShare.create(artwork_id: art1.id, viewer_id: frank.id)
