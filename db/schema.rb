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

ActiveRecord::Schema.define(version: 20150601141137) do

  create_table "distribution_levels", force: :cascade do |t|
    t.integer  "level_number", limit: 2
    t.string   "level_name",   limit: 30
    t.integer  "pub_id",       limit: 4
    t.string   "level_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "created_by",   limit: 255
    t.string   "updated_by",   limit: 255
  end

  create_table "distributions", force: :cascade do |t|
    t.integer  "lookup_id",         limit: 4
    t.integer  "level_number",      limit: 4
    t.string   "distribution_code", limit: 255
    t.string   "description",       limit: 255
    t.string   "newspaper_name",    limit: 255
    t.integer  "parent_lookup_id",  limit: 4
    t.string   "sort",              limit: 255
    t.string   "text_active",       limit: 255
    t.date     "active_date"
    t.date     "inactive_date"
    t.integer  "pub_id",            limit: 4
    t.integer  "parent_id",         limit: 4
    t.integer  "acitve",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "created_by",        limit: 255
    t.string   "updated_by",        limit: 255
    t.string   "address",           limit: 255
  end

  create_table "insert_conditions", force: :cascade do |t|
    t.string   "conditionname", limit: 30
    t.string   "responsecode",  limit: 2
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "insert_printmethods", force: :cascade do |t|
    t.string   "methodname", limit: 20
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "insert_pspostresponses", force: :cascade do |t|
    t.integer  "lookupid",    limit: 4
    t.integer  "insertid",    limit: 4,   default: 0, null: false
    t.integer  "leftover",    limit: 4
    t.string   "postnote",    limit: 250
    t.string   "updatedby",   limit: 30
    t.integer  "latetrucks",  limit: 4,   default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "conditionid", limit: 4
  end

  create_table "insert_psresponses", force: :cascade do |t|
    t.integer  "lookupid",     limit: 4,   null: false
    t.integer  "insertid",     limit: 4,   null: false
    t.date     "receiveddate"
    t.integer  "conditionid",  limit: 4
    t.integer  "quantityrec",  limit: 4
    t.string   "receivednote", limit: 250
    t.string   "receivedby",   limit: 100, null: false
    t.string   "updatedby",    limit: 30
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "insert_pubs", force: :cascade do |t|
    t.string   "pub_code",       limit: 255
    t.string   "pub_name",       limit: 255
    t.string   "ams_pub_code",   limit: 255
    t.string   "cci_product",    limit: 255
    t.string   "cci_zone",       limit: 255
    t.string   "cci_edition",    limit: 255
    t.string   "text_active",    limit: 255
    t.integer  "page_format_id", limit: 4
    t.integer  "active",         limit: 4
    t.string   "create_by",      limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "inserts", force: :cascade do |t|
    t.integer  "insertid",          limit: 4,                           null: false
    t.string   "inserttypecode",    limit: 10,                          null: false
    t.string   "pubcode",           limit: 3,                           null: false
    t.string   "positioncode",      limit: 12
    t.integer  "paperstockid",      limit: 4
    t.integer  "methodid",          limit: 4
    t.integer  "subtypeid",         limit: 4
    t.integer  "createdby",         limit: 4
    t.integer  "updatedby",         limit: 4
    t.string   "adstatuscode",      limit: 2
    t.string   "adstatusfursncode", limit: 4
    t.integer  "advacct",           limit: 4
    t.integer  "pressrunlonumber",  limit: 4
    t.string   "stagecode",         limit: 10
    t.string   "colorcode",         limit: 10
    t.integer  "packagenumber",     limit: 4
    t.date     "issuedate",                                             null: false
    t.string   "productline",       limit: 30
    t.string   "materialdesc",      limit: 30
    t.integer  "batchnumber",       limit: 4
    t.decimal  "width",                         precision: 4, scale: 2
    t.decimal  "height",                        precision: 4, scale: 2
    t.integer  "pages",             limit: 4
    t.integer  "perccircb",         limit: 4
    t.decimal  "adlinage",                      precision: 5, scale: 2
    t.date     "psreceiveddate"
    t.decimal  "erop",                          precision: 5, scale: 2
    t.string   "waitlistheld",      limit: 1
    t.string   "billedby",          limit: 1
    t.string   "eionumber",         limit: 12
    t.string   "cncldbysalesrep",   limit: 30
    t.string   "regional",          limit: 1
    t.integer  "cancelledbyuser",   limit: 4
    t.date     "fursndate"
    t.time     "transtimefrom"
    t.time     "transtimeto"
    t.date     "transdateto"
    t.string   "overruns",          limit: 250
    t.text     "insertnotes",       limit: 255
    t.string   "materialinmclean",  limit: 1
    t.string   "exclusive",         limit: 1
    t.string   "schedulernotes",    limit: 250
    t.date     "transdate"
    t.integer  "prepressworkid",    limit: 4
    t.decimal  "weight",                        precision: 5, scale: 2
    t.decimal  "editorialspace",                precision: 5, scale: 3
    t.string   "projruncode",       limit: 20
    t.string   "projdblsect",       limit: 30
    t.string   "straightcollect",   limit: 1
    t.string   "sectionname",       limit: 250
    t.string   "allprintsites",     limit: 1
    t.string   "printsiteready",    limit: 1
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "pub",        limit: 255
    t.date     "fromdate"
    t.date     "todate"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "printsitename", limit: 255
    t.string   "printsitecode", limit: 255
    t.string   "password",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
