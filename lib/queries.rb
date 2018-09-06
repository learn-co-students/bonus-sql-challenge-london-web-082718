
def guest_with_most_appearances
  run_query("SELECT name, count(*) AS total FROM guests GROUP BY name ORDER BY count(*) DESC LIMIT 1;")
end

def most_popular_profession_by_year
  run_query("SELECT *, COUNT(*) from guests GROUP BY occupation, year ORDER BY year, count(*) DESC")
end

def most_popular_profession_overall
  run_query("SELECT occupation, count(occupation) from guests GROUP BY occupation ORDER BY count(*) DESC LIMIT 1;")
end

def guests_named_bill
  run_query("SELECT * from guests WHERE name LIKE 'Bill%';")
end

def patrick_stewart_dates
  run_query("SELECT name, date FROM guests WHERE name = 'Patrick Stewart';")
end

def year_with_most_guests
  run_query("SELECT year, Count(*) FROM guests GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1;")
end

def most_popular_type_by_year
  run_query("Select *, COUNT(*) from guests GROUP BY type, year ORDER BY year, count(*) DESC")
end
