# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jenn = User.new(firstname: 'Jennifer', lastname: 'Dillon', email: 'jenniferndillon@gmail.com', phone: '619-777-3540', status: User::ACCOUNT_MANAGER);
jenn.password = 't3mp'
jenn.password_confirmation = 't3mp'
jenn.save

ian = User.new(firstname: 'Ian', lastname: 'Dillon', email: 'coachdillon@gmail.com', phone: '619-777-3513', status: User::ACCOUNT_MANAGER);
ian.password = 't3mp'
ian.password_confirmation = 't3mp'
ian.save

color = Category.create(name: 'Color');
developer = Category.create(name: 'Developer');
bleach = Category.create(name: 'Bleach');
shampoos = Category.create(name: 'Shampoo & Conditioner');
treatments = Category.create(name: 'Treatments');
styling = Category.create(name: 'Styling');
Category.create(name: 'Clippers');
Category.create(name: 'Shears');
Category.create(name: 'Soap');
medicinal = Category.create(name: 'Scalp Treaments');

Salon.create(name: 'Le Chateau', address: '88 East Bonita Rd.', city: 'Chula Vista', state: 'CA', zip: '91910', phone: '');
studio264 = Salon.create(name: 'Studio 264', address: '264 3rd Ave.', city: 'Chula Vista', state: 'CA', zip: '91910', phone: '');

jane = User.new(firstname: 'Jane', lastname: 'Doe', email: 'janedoe@gmail.com', phone: '619-555-1212', status: User::PREMIERE, salon_id: studio264.id, account_manager_id: ian.id);
jane.password = 't3mp'
jane.password_confirmation = 't3mp'
jane.save

bbCOS = Manufacturer.create(name: 'bbCOS');
wahl = Manufacturer.create(name: 'Wahl');
Manufacturer.create(name: 'Solano');
Manufacturer.create(name: 'Kasho');

innovation = Line.create(name: 'Innovation', manufacturer_id: bbCOS.id);
keratin = Line.create(name: 'Keratin', manufacturer_id: bbCOS.id);
Line.create(name: 'Kristal EVO', manufacturer_id: bbCOS.id);
Line.create(name: 'Sterling', manufacturer_id: wahl.id);
Line.create(name: 'Wahl Professional', manufacturer_id: wahl.id);

Product.create(name: '1/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '2/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '3/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '10/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '1/11', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/00', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/00', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/00', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/00', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/00', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/00', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/1', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/1', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/1', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/1', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/1', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '10/1', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/3', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/3', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/3', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/3', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/3', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/33', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/4', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/4', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/4', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/4', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/40', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/43', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/46', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/34', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/34', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/43', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/62', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/60', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/62', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/65', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/66', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/66', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/64', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/66', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/62', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/66', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '3/65', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/52', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/5', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/5', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/54', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/5', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/07', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/07', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/07', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/07', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/07', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/7', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/7', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/7', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '10/7', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/72', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/72', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/72', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/53', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/53', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '7/53', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '11/0', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '11/01', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '11/02', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '11/03', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '12/11', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '12/21', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '8/21', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '9/21', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '10/21', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '3/2', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4/2', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '5/2', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6/2', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '000', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '1000', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '2000', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '4000', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);
Product.create(name: '6000', line_id: innovation.id, manufacturer_id: innovation.manufacturer_id, category_id: color.id);

Product.find_all_by_line_id(innovation.id).each { |p|
  p.update_attributes(:price => 6.00)
}

Product.create(name: 'k1/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k2/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k3/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k4/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k5/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k8/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k9/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k10/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k5/1', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/1', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/1', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k8/1', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k9/1', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k1/11', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k5/3', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/3', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/3', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k8/3', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k8/7', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/00', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/00', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k8/00', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k5/53', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/53', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k4/07', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k5/07', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/07', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/07', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/4', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/40', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k4/52', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/5', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k5/66', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k6/66', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k7/66', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k11/0', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k11/01', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);
Product.create(name: 'k11/02', line_id: keratin.id, manufacturer_id: keratin.manufacturer_id, category_id: color.id);

Product.find_all_by_line_id(keratin.id).each { |p|
  p.update_attributes(:price => 7.00)
}

Product.create(name: 'Oxigen 10 V', size: '1 L', manufacturer_id: bbCOS.id, category_id: developer.id, :price => 6);
Product.create(name: 'Oxigen 20 V', size: '1 L', manufacturer_id: bbCOS.id, category_id: developer.id, :price => 6);
Product.create(name: 'Oxigen 30 V', size: '1 L', manufacturer_id: bbCOS.id, category_id: developer.id, :price => 6);
Product.create(name: 'Oxigen 40 V', size: '1 L', manufacturer_id: bbCOS.id, category_id: developer.id, :price => 6);
Product.create(name: 'Emulsion Cream Keratin', size: '1 L', manufacturer_id: bbCOS.id, category_id: developer.id, :price => 7);

Product.create(name: 'Meches Activator', size: '150 ml', manufacturer_id: bbCOS.id, category_id: bleach.id, :price => 3.95);
Product.create(name: 'Meches Activator', size: '1 L', manufacturer_id: bbCOS.id, category_id: bleach.id, :price => 9);
Product.create(name: 'Bleach Powder', size: '1.1 lbs', manufacturer_id: bbCOS.id, category_id: bleach.id, :price => 19.95);
Product.create(name: 'Bleach Powder Refill', size: '1.1 lbs', manufacturer_id: bbCOS.id, category_id: bleach.id, :price => 17.95);

Product.create(name: 'Post-Color Shampoo', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 19.95);
Product.create(name: 'Post-Color Conditioner', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 19.95);
Product.create(name: 'Hydrating Shampoo', size: '300 ml', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 10.95);
Product.create(name: 'Hydrating Shampoo', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 19.95);
Product.create(name: 'Elixir Shampoo', size: '300 ml', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 10.95, :onsale => true, :old_price => 11.95);
Product.create(name: 'Elixir Shampoo', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 19.95);
Product.create(name: 'Nutritive Shampoo', size: '300 ml', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 11.95);
Product.create(name: 'Nutritive Shampoo', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 20.95);
Product.create(name: 'Hydrating Conditioner', size: '250 ml', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 11.95);
Product.create(name: 'Hydrating Conditioner', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 19.95);
Product.create(name: 'Elixir Conditioner', size: '250 ml', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 11.95);
Product.create(name: 'Elixir Conditioner', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 19.95);
Product.create(name: 'Nutritive Conditioner', size: '250 ml', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 12.95);
Product.create(name: 'Nutritive Conditioner', size: '1 L', manufacturer_id: bbCOS.id, category_id: shampoos.id, :price => 20.95);

Product.create(name: 'Nourishing Lotion Vials', size: '12 count', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 23.95);
Product.create(name: 'Hydrating Lotion Vials', size: '12 count', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 23.95);
Product.create(name: 'Liquid Krystals', size: '30 ml', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 14.95);
Product.create(name: 'Liquid Krystals', size: '50 ml', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 19.95);
Product.create(name: 'System Spray Soft', size: '100 ml', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 16.95);
Product.create(name: 'System Spray Strong', size: '100 ml', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 17.95);
Product.create(name: 'Elixir', size: '50 ml', manufacturer_id: bbCOS.id, category_id: treatments.id, :price => 24.95);

Product.create(name: 'Matt Wax', size: '100 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 16.95);
Product.create(name: 'Gloss Wax', size: '100 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 16.95);
Product.create(name: 'Soft Look Mousse', size: '300 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 12.95);
Product.create(name: 'Strong Look Mousse', size: '300 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 12.95);
Product.create(name: 'Power Fix Mousse', size: '300 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 12.95);
Product.create(name: 'Anti-Frizzy Hairspray', size: '150 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 7.95);
Product.create(name: 'Anti-Frizzy Hairspray', size: '300 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 12.95);
Product.create(name: 'Power Fix Hairspray', size: '300 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 12.95);
Product.create(name: 'Strong Hairspray', size: '300 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 12.95);
Product.create(name: 'Wet Look Gel', size: '250 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 9.95);
Product.create(name: 'Power Fix Gel', size: '250 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 9.95);
Product.create(name: 'Shine Hair', size: '150 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 10.95);
Product.create(name: 'Passion Curl Creme', size: '250 ml', manufacturer_id: bbCOS.id, category_id: styling.id, :price => 11.95);

Product.create(name: 'Daily Shampoo', size: '300 ml', manufacturer_id: bbCOS.id, category_id: medicinal.id, :price => 7.25);
Product.create(name: 'Dandruff Shampoo', size: '300 ml', manufacturer_id: bbCOS.id, category_id: medicinal.id, :price => 7.50);
Product.create(name: 'Stem Cell Shampoo', size: '150 ml', manufacturer_id: bbCOS.id, category_id: medicinal.id, :price => 6.50);
Product.create(name: 'Stem Cell Kit', size: '150 ml + 6 count', manufacturer_id: bbCOS.id, category_id: medicinal.id, :price => 13.00);
Product.create(name: 'Hair Loss Treatment Vials', size: '12 count', manufacturer_id: bbCOS.id, category_id: medicinal.id, :price => 20);

# debugging seeds
#ian.cart.line_items.create()