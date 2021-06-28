#!/usr/bin/env ruby

require 'csv'

edible = {e: 'edible', p: 'poisonous'}
cap_shape = { b: 'bell', c: 'conical', x: 'convex', f: 'flat', k: 'knobbed', s: 'sunken' }
cap_surface = { f: 'fibrous', g: 'grooves', y: 'scaly', s: 'smooth' }
cap_color = { n: 'brown', b: 'buff', c: 'cinnamon', g: 'gray', r: 'green', p: 'pink', u: 'purple', e: 'red', w: 'white', y: 'yellow' }
bruises = { t: true, f: false }
odor = { a: 'almond', l: 'anise', c: 'creosote', y: 'fishy', f: 'foul', m: 'musty', n: 'none', p: 'pungent', s: 'spicy' }
gill_attachment = { a: 'attached', d: 'descending', f: 'free', n: 'notched' }
gill_spacing = { c: 'close', w: 'crowded', d: 'distant' }
gill_size = { b: 'broad', n: 'narrow' }
gill_color = { k: 'black', n: 'brown', b: 'buff', h: 'chocolate', g: 'gray', r: 'green', o: 'orange', p: 'pink', u: 'purple', e: 'red', w: 'white', y: 'yellow' }
stalk_shape = { e: 'enlarging', t: 'tapering' }
stalk_root = { b: 'bulbous', c: 'club', u: 'cup', e: 'equal', z: 'rhizomorphs', r: 'rooted', missing: 'missing' }
stalk_surface_above_ring = { f: 'fibrous', y: 'scaly', k: 'silky', s: 'smooth' }
stalk_surface_below_ring = { f: 'fibrous', y: 'scaly', k: 'silky', s: 'smooth' }
stalk_color_above_ring = { n: 'brown', b: 'buff', c: 'cinnamon', g: 'gray', o: 'orange', p: 'pink', e: 'red', w: 'white', y: 'yellow' }
stalk_color_below_ring = { n: 'brown', b: 'buff', c: 'cinnamon', g: 'gray', o: 'orange', p: 'pink', e: 'red', w: 'white', y: 'yellow' }
veil_type = { p: 'partial', u: 'universal' }
veil_color = { n: 'brown', o: 'orange', w: 'white', y: 'yellow' }
ring_number = { n: 'none', o: 'one', t: 'two' }
ring_type = { c: 'cobwebby', e: 'evanescent', f: 'flaring', l: 'large', n: 'none', p: 'pendant', s: 'sheathing', z: 'zone' }
spore_print_color = { k: 'black', n: 'brown', b: 'buff', h: 'chocolate', r: 'green', o: 'orange', u: 'purple', w: 'white', y: 'yellow' }
population = { a: 'abundant', c: 'clustered', n: 'numerous', s: 'scattered', v: 'several', y: 'solitary' }
habitat = { g: 'grasses', l: 'leaves', m: 'meadows', p: 'paths', u: 'urban', w: 'waste', d: 'woods' }

colors = cap_color.merge(gill_color).merge(stalk_color_above_ring).merge(veil_color).merge(spore_print_color)


index = '1'
str = 'e,b,y,w,t,l,f,c,b,n,e,c,s,s,w,w,p,w,o,p,n,s,m'
sstr = str.split(',').map(&:to_sym)
name = "Mushroom #{index}"
mushroom = {
  name: name,
  edible: edible[sstr[0]],
  cap_shape: cap_shape[sstr[1]],
  cap_surface: cap_surface[sstr[2]],
  cap_color: cap_color[sstr[3]],
  bruises: bruises[sstr[4]],
  odor: odor[sstr[5]],
  gill_attachment: gill_attachment[sstr[6]],
  gill_spacing: gill_spacing[sstr[7]],
  gill_size: gill_size[sstr[8]],
  gill_color: gill_color[sstr[9]],
  stalk_shape: stalk_shape[sstr[10]],
  stalk_root: stalk_root[sstr[11]],
  stalk_surface_above_ring: stalk_surface_above_ring[sstr[12]],
  stalk_surface_below_ring: stalk_surface_below_ring[sstr[13]],
  stalk_color_above_ring: stalk_color_above_ring[sstr[14]],
  stalk_color_below_ring: stalk_color_below_ring[sstr[15]],
  veil_type: veil_type[sstr[16]],
  veil_color: veil_color[sstr[17]],
  ring_number: ring_number[sstr[18]],
  ring_type: ring_type[sstr[19]],
  spore_print_color: spore_print_color[sstr[20]],
  population: population[sstr[21]],
  habitat: habitat[sstr[22]]
}
puts mushroom

# csv = CSV.foreach(str)
# csv = CSV.new(str)
# csv.each do |row|
#   puts row
# end
#
# cap_shape = { b: 'bell', c: 'conical', x: 'convex', f: 'flat', k: 'knobbed', s: 'sunken' }
#
=begin
rails g model CapShape name:string abbr:string
rails g model CapSurface name:string abbr:string
rails g model Color name:string abbr:string
rails g model Odor name:string abbr:string
rails g model GillAttachment name:string abbr:string
rails g model GillSpacing name:string abbr:string
rails g model GillSize name:string abbr:string
rails g model StalkShape name:string abbr:string
rails g model StalkRoot name:string abbr:string
rails g model StalkSurface name:string abbr:string
rails g model VeilType name:string abbr:string
rails g model RingNumber name:string abbr:string
rails g model RingType name:string abbr:string
rails g model Population name:string abbr:string
rails g model Habitat name:string abbr:string


rails g scaffold Mushroom name:string edible:boolean cap_shape:references cap_surface:references cap_color:references
bruises:boolean odor:references gill_attachment:references gill_spacing:references gill_size:references
gill_color:references stalk_shape:references stalk_root:references stalk_surface_above_ring:references
stalk_surface_below_ring:references stalk_color_above_ring:references stalk_color_below_ring:references
veil_type:references veil_color:references ring_number:references ring_type:references spore_print_color:references
population:references habitat:references
=end