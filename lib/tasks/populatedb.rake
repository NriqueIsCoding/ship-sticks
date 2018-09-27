namespace :myspace do
  desc "Populating mongoDB from JSON file"
  task mytask: :environment do

    i = 0
    json = ActiveSupport::JSON.decode(File.read('tmp/products.json'))

      json.each do |a|
        while i < a[1].length
          Product.create(name: a[1][i]['name'], type: a[1][i]['type'], length: a[1][i]['length'], width: a[1][i]['width'], height: a[1][i]['height'], weight: a[1][i]['weight'])
          # puts a[1][i]['name']
          i += 1
        end
      end
    end
end
