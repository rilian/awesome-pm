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

ActiveRecord::Schema.define(version: 20140802231649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_features", force: true do |t|
    t.integer  "customer_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_features", ["customer_id"], name: "index_customer_features_on_customer_id", using: :btree
  add_index "customer_features", ["feature_id"], name: "index_customer_features_on_feature_id", using: :btree

  create_table "customer_stories", force: true do |t|
    t.integer  "customer_id"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_stories", ["customer_id"], name: "index_customer_stories_on_customer_id", using: :btree
  add_index "customer_stories", ["story_id"], name: "index_customer_stories_on_story_id", using: :btree

  create_table "customer_tasks", force: true do |t|
    t.integer  "customer_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_tasks", ["customer_id"], name: "index_customer_tasks_on_customer_id", using: :btree
  add_index "customer_tasks", ["task_id"], name: "index_customer_tasks_on_task_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["product_id"], name: "index_customers_on_product_id", using: :btree

  create_table "features", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "features", ["product_id"], name: "index_features_on_product_id", using: :btree

  create_table "product", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_features", force: true do |t|
    t.integer  "project_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_features", ["feature_id"], name: "index_project_features_on_feature_id", using: :btree
  add_index "project_features", ["project_id"], name: "index_project_features_on_project_id", using: :btree

  create_table "project_tasks", force: true do |t|
    t.integer  "project_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_tasks", ["project_id"], name: "index_project_tasks_on_project_id", using: :btree
  add_index "project_tasks", ["task_id"], name: "index_project_tasks_on_task_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["product_id"], name: "index_projects_on_product_id", using: :btree

  create_table "stories", force: true do |t|
    t.text     "body"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["feature_id"], name: "index_stories_on_feature_id", using: :btree

  create_table "tasks", force: true do |t|
    t.text     "body"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["story_id"], name: "index_tasks_on_story_id", using: :btree

end
