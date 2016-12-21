namespace :testing do
	task :name => :environment do
    Product.all.each do |pt|
      cust_notes  = pt.name + '-RS' + pt.price.to_s + 'Added at' + Time.now.to_s
      pt.update_attributes(:note => cust_notes)
      puts 'done !'
      end
  end
end
