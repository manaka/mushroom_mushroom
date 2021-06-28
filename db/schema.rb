# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_28_132342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cap_shapes", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cap_surfaces", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gill_attachments", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gill_sizes", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gill_spacings", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "habitats", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mushrooms", force: :cascade do |t|
    t.string "name"
    t.boolean "edible"
    t.bigint "cap_shape_id", null: false
    t.bigint "cap_surface_id", null: false
    t.integer "cap_color", null: false
    t.boolean "bruises"
    t.bigint "odor_id", null: false
    t.bigint "gill_attachment_id", null: false
    t.bigint "gill_spacing_id", null: false
    t.bigint "gill_size_id", null: false
    t.integer "gill_color", null: false
    t.bigint "stalk_shape_id", null: false
    t.bigint "stalk_root_id", null: false
    t.integer "stalk_surface_above_ring", null: false
    t.integer "stalk_surface_below_ring", null: false
    t.integer "stalk_color_above_ring", null: false
    t.integer "stalk_color_below_ring", null: false
    t.bigint "veil_type_id", null: false
    t.integer "veil_color", null: false
    t.bigint "ring_number_id", null: false
    t.bigint "ring_type_id", null: false
    t.integer "spore_print_color", null: false
    t.bigint "population_id", null: false
    t.bigint "habitat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cap_shape_id"], name: "index_mushrooms_on_cap_shape_id"
    t.index ["cap_surface_id"], name: "index_mushrooms_on_cap_surface_id"
    t.index ["gill_attachment_id"], name: "index_mushrooms_on_gill_attachment_id"
    t.index ["gill_size_id"], name: "index_mushrooms_on_gill_size_id"
    t.index ["gill_spacing_id"], name: "index_mushrooms_on_gill_spacing_id"
    t.index ["habitat_id"], name: "index_mushrooms_on_habitat_id"
    t.index ["odor_id"], name: "index_mushrooms_on_odor_id"
    t.index ["population_id"], name: "index_mushrooms_on_population_id"
    t.index ["ring_number_id"], name: "index_mushrooms_on_ring_number_id"
    t.index ["ring_type_id"], name: "index_mushrooms_on_ring_type_id"
    t.index ["stalk_root_id"], name: "index_mushrooms_on_stalk_root_id"
    t.index ["stalk_shape_id"], name: "index_mushrooms_on_stalk_shape_id"
    t.index ["veil_type_id"], name: "index_mushrooms_on_veil_type_id"
  end

  create_table "odors", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "populations", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ring_numbers", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ring_types", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stalk_roots", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stalk_shapes", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stalk_surfaces", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "veil_types", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "mushrooms", "cap_shapes"
  add_foreign_key "mushrooms", "cap_surfaces"
  add_foreign_key "mushrooms", "gill_attachments"
  add_foreign_key "mushrooms", "gill_sizes"
  add_foreign_key "mushrooms", "gill_spacings"
  add_foreign_key "mushrooms", "habitats"
  add_foreign_key "mushrooms", "odors"
  add_foreign_key "mushrooms", "populations"
  add_foreign_key "mushrooms", "ring_numbers"
  add_foreign_key "mushrooms", "ring_types"
  add_foreign_key "mushrooms", "stalk_roots"
  add_foreign_key "mushrooms", "stalk_shapes"
  add_foreign_key "mushrooms", "veil_types"
end
