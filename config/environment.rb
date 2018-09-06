require 'bundler'
Bundler.require
require 'csv'
require 'sqlite3'
require_relative '../db/seed.rb'

DB = { :conn => SQLite3::Database.new('./db/guests.db') }
DB[:conn].results_as_hash = true

def run_query(sql)
  DB[:conn].execute(sql)
end

def add_entry(sql, values)
  DB[:conn].execute(sql, values)
end

create_table = "CREATE TABLE guests (id INTEGER PRIMARY KEY, year INTEGER, occupation STRING, date DATE, type STRING, name STRING);"

run_query(create_table)
