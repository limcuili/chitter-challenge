def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'chitter_challenge_test')

  #clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end
