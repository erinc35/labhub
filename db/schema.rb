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

ActiveRecord::Schema.define(version: 20161007041831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approvals", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "proposal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["proposal_id"], name: "index_approvals_on_proposal_id", using: :btree
    t.index ["user_id"], name: "index_approvals_on_user_id", using: :btree
  end

  create_table "collaborations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "experiment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["experiment_id"], name: "index_collaborations_on_experiment_id", using: :btree
    t.index ["user_id"], name: "index_collaborations_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "components", force: :cascade do |t|
    t.string   "type"
    t.integer  "experiment_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["experiment_id"], name: "index_components_on_experiment_id", using: :btree
    t.index ["user_id"], name: "index_components_on_user_id", using: :btree
  end

  create_table "experiments", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "proposal_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["proposal_id"], name: "index_experiments_on_proposal_id", using: :btree
    t.index ["user_id"], name: "index_experiments_on_user_id", using: :btree
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "abstract"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "status",     default: "pending"
    t.index ["user_id"], name: "index_proposals_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "role"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "username"
  end

  add_foreign_key "approvals", "proposals"
  add_foreign_key "approvals", "users"
  add_foreign_key "collaborations", "experiments"
  add_foreign_key "collaborations", "users"
  add_foreign_key "components", "experiments"
  add_foreign_key "components", "users"
  add_foreign_key "experiments", "proposals"
  add_foreign_key "experiments", "users"
  add_foreign_key "proposals", "users"
end
