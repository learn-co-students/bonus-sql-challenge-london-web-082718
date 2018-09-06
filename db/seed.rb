# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.

def read_csv
  csv_raw = File.read('./daily_show_guests.csv')
  csv_parsed = CSV.parse(csv_raw, headers: true)
  csv_parsed.each do |row|
    add_entry("INSERT INTO guests ('year', 'occupation', 'date', 'type', 'name') VALUES (?, ?, ?, ?, ?)", row.fields)
  end
end
