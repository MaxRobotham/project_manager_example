# this is our NimbleCSV parser which we define inline for tab-delimited CSV

defmodule CSVWriter do

  @user_data [
    ~w("Date Name Age City Comment"),
    ~w("2018-08-06 Heike 23 Köln Hallo👋"),
    ~w("2018-08-07 Jürgen 44 München 😸Tschüß❤️")
  ]

  def write_csv_file() do
    File.write!("users.csv", data_to_csv)
  end

  def data_to_csv() do
    @user_data
    |> CSVParser.dump_to_iodata()
  end

end

  def write_csv_file() do
    File.write!("users.csv", data_to_csv)

  end

  def data_to_csv() do
    @user_data
    |> CSVParser.dump_to_iodata()
  end









