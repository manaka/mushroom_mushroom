#!/usr/bin/env ruby

EDIBLE = { e: true, p: false }.freeze
CAP_SHAPE = { b: 'bell', c: 'conical', x: 'convex', f: 'flat', k: 'knobbed', s: 'sunken' }.freeze
CAP_SURFACE = { f: 'fibrous', g: 'grooves', y: 'scaly', s: 'smooth' }.freeze
CAP_COLOR = { n: 'brown', b: 'buff', c: 'cinnamon', g: 'gray', r: 'green', p: 'pink', u: 'purple', e: 'red', w: 'white', y: 'yellow' }.freeze
BRUISES = { t: true, f: false }.freeze
ODOR = { a: 'almond', l: 'anise', c: 'creosote', y: 'fishy', f: 'foul', m: 'musty', n: 'none', p: 'pungent', s: 'spicy' }.freeze
GILL_ATTACHMENT = { a: 'attached', d: 'descending', f: 'free', n: 'notched' }.freeze
GILL_SPACING = { c: 'close', w: 'crowded', d: 'distant' }.freeze
GILL_SIZE = { b: 'broad', n: 'narrow' }.freeze
GILL_COLOR = { k: 'black', n: 'brown', b: 'buff', h: 'chocolate', g: 'gray', r: 'green', o: 'orange', p: 'pink', u: 'purple', e: 'red', w: 'white', y: 'yellow' }.freeze
STALK_SHAPE = { e: 'enlarging', t: 'tapering' }.freeze
STALK_ROOT = { b: 'bulbous', c: 'club', u: 'cup', e: 'equal', z: 'rhizomorphs', r: 'rooted', missing: 'missing' }.freeze
STALK_SURFACE_ABOVE_RING = { f: 'fibrous', y: 'scaly', k: 'silky', s: 'smooth' }.freeze
STALK_SURFACE_BELOW_RING = { f: 'fibrous', y: 'scaly', k: 'silky', s: 'smooth' }.freeze
STALK_COLOR_ABOVE_RING = { n: 'brown', b: 'buff', c: 'cinnamon', g: 'gray', o: 'orange', p: 'pink', e: 'red', w: 'white', y: 'yellow' }.freeze
STALK_COLOR_BELOW_RING = { n: 'brown', b: 'buff', c: 'cinnamon', g: 'gray', o: 'orange', p: 'pink', e: 'red', w: 'white', y: 'yellow' }.freeze
VEIL_TYPE = { p: 'partial', u: 'universal' }.freeze
VEIL_COLOR = { n: 'brown', o: 'orange', w: 'white', y: 'yellow' }.freeze
RING_NUMBER = { n: 'none', o: 'one', t: 'two' }.freeze
RING_TYPE = { c: 'cobwebby', e: 'evanescent', f: 'flaring', l: 'large', n: 'none', p: 'pendant', s: 'sheathing', z: 'zone' }.freeze
SPORE_PRINT_COLOR = { k: 'black', n: 'brown', b: 'buff', h: 'chocolate', r: 'green', o: 'orange', u: 'purple', w: 'white', y: 'yellow' }.freeze
POPULATION = { a: 'abundant', c: 'clustered', n: 'numerous', s: 'scattered', v: 'several', y: 'solitary' }.freeze
HABITAT = { g: 'grasses', l: 'leaves', m: 'meadows', p: 'paths', u: 'urban', w: 'waste', d: 'woods' }.freeze
COLORS = CAP_COLOR.merge(GILL_COLOR).merge(STALK_COLOR_ABOVE_RING).merge(VEIL_COLOR).merge(SPORE_PRINT_COLOR).freeze
