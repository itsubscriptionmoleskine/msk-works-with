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

ActiveRecord::Schema.define(version: 20190103152420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "app_store_links", force: :cascade do |t|
    t.string "link"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "app_store_id"
    t.bigint "app_id"
    t.index ["app_id"], name: "index_app_store_links_on_app_id"
    t.index ["app_store_id", "app_id"], name: "index_app_store_links_on_app_store_id_and_app_id"
    t.index ["app_store_id"], name: "index_app_store_links_on_app_store_id"
  end

  create_table "app_stores", force: :cascade do |t|
    t.string "name"
    t.string "badge_image_url"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "icon_id"
  end

  create_table "apps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "info_url"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "developer_id"
    t.index ["developer_id"], name: "index_apps_on_developer_id"
  end

  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo_image_url"
  end

  create_table "example_images", force: :cascade do |t|
    t.string "image_url"
    t.text "caption"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "works_with_id"
    t.index ["works_with_id"], name: "index_example_images_on_works_with_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "shop_link"
    t.text "description"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_image"
  end

  create_table "testimonial_slides", force: :cascade do |t|
    t.string "image_url"
    t.text "caption"
    t.boolean "is_live"
    t.integer "sequence_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "testimonial_id"
    t.index ["testimonial_id"], name: "index_testimonial_slides_on_testimonial_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "works_with_id"
    t.text "video_embed"
    t.string "promo_image_url"
    t.text "promo_text"
    t.date "publish_date"
    t.index ["works_with_id"], name: "index_testimonials_on_works_with_id"
  end

  create_table "use_cases", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "works_with_id"
    t.index ["works_with_id"], name: "index_use_cases_on_works_with_id"
  end

  create_table "works_withs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "app_id"
    t.bigint "product_id"
    t.string "promo_image_url"
    t.text "promo_text"
    t.index ["app_id"], name: "index_works_withs_on_app_id"
    t.index ["product_id", "app_id"], name: "index_works_withs_on_product_id_and_app_id"
    t.index ["product_id"], name: "index_works_withs_on_product_id"
  end

end
