require "import"

namespace :import_csv do
  desc "CSVインポートを行うためのRakeタスク"
  task aws_text: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    AwsText.create!(list)
  end
end
