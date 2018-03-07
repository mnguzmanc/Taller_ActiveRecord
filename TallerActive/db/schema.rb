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

ActiveRecord::Schema.define(version: 20180307010611) do

  create_table "calificacions", force: :cascade do |t|
    t.string "corte1"
    t.string "corte2"
    t.string "corte3"
    t.string "notafinal"
    t.integer "estudiante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_calificacions_on_estudiante_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.date "fechaNacimiento"
    t.string "tutor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.date "horario"
    t.string "salon"
    t.string "cupos"
    t.integer "Materia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Materia_id"], name: "index_grupos_on_Materia_id"
  end

  create_table "historia_academicas", force: :cascade do |t|
    t.string "planEstudio"
    t.string "papa"
    t.integer "estudiante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_historia_academicas_on_estudiante_id"
  end

  create_table "materia", force: :cascade do |t|
    t.string "nombre"
    t.string "creditos"
    t.string "descripcion"
    t.integer "estudiante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_materia_on_estudiante_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string "nombre"
    t.string "departamento"
    t.string "especialidad"
    t.integer "Materia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Materia_id"], name: "index_profesors_on_Materia_id"
  end

end
