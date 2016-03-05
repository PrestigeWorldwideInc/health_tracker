# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160305164757) do
=======
ActiveRecord::Schema.define(version: 20160304234937) do
>>>>>>> 82e94d633debc19ccaebd9fc989ec6b5497f3c47

  create_table "choloric_intakes", force: :cascade do |t|
    t.decimal  "calories"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.decimal  "calories_burned_per_minute"
    t.decimal  "duration"
    t.integer  "exercise_type_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "step_counters", force: :cascade do |t|
    t.integer  "steps_taken"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "step_counts", force: :cascade do |t|
    t.integer  "steps_taken"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weights", force: :cascade do |t|
    t.decimal  "lbs"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
