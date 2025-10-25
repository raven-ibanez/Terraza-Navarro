/*
  # Add Menu Items for Restaurant

  1. New Categories
    - breakfast, snacks, a-la-carte, munchies, pasta, dessert, extras, mains, crafted-drinks

  2. Menu Items
    - Breakfast items: Beef Tapa, Chorizo Pudpug, Hungarian Sausage, Pork Tocino
    - Snacks: Beef Shawarma Wrap, Beef Nacho Fries, House Cheese Burger
    - A La Carte Snacks: Beef Shawarma Wrap, House Cheese Burger, French Fries
    - Munchies: Hungarian Sausage, Lumpia Shanghai, Chicken Poppers
    - Pasta: Mac & Cheese, Pasta Alfredo, Pesto Pasta
    - Dessert: Cheesecake Cups
    - Extras: Plain Rice, Java Rice, Garlic Rice, Repto, Fried Egg, Ice (Bag)
    - Mains: Various beef, chicken, pork, and rice dishes
    - Crafted Drinks: Coffee, boba, and cloud drinks

  3. Features
    - No images added as requested
    - Proper categorization
    - Appropriate pricing
*/

-- First, add the new categories
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('breakfast', 'Breakfast', '🍳', 1, true),
  ('snacks', 'Snacks', '🍟', 2, true),
  ('a-la-carte', 'A La Carte Snacks', '🍔', 3, true),
  ('munchies', 'Munchies', '🍿', 4, true),
  ('pasta', 'Pasta', '🍝', 5, true),
  ('dessert', 'Dessert', '🍰', 6, true),
  ('extras', 'Extras', '🥢', 7, true),
  ('mains', 'Mains', '🍖', 8, true),
  ('crafted-drinks', 'Crafted Drinks', '🥤', 9, true)
ON CONFLICT (id) DO NOTHING;

-- Insert Breakfast Items
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Beef Tapa', 'Marinated beef with garlic rice', 109, 'breakfast', true, true, NULL),
  ('Chorizo Pudpug', 'Spanish-style sausage with rice', 109, 'breakfast', true, true, NULL),
  ('Hungarian Sausage', 'Hungarian-style sausage served with rice', 129, 'breakfast', false, true, NULL),
  ('Pork Tocino', 'Sweet cured pork with garlic rice', 99, 'breakfast', true, true, NULL);

-- Insert Snacks
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Beef Shawarma Wrap', 'Spiced beef wrapped in pita bread', 129, 'snacks', true, true, NULL),
  ('Beef Nacho Fries', 'Loaded nacho fries with seasoned beef', 129, 'snacks', true, true, NULL),
  ('House Cheese Burger', 'Classic burger with special cheese sauce', 149, 'snacks', true, true, NULL);

-- Insert A La Carte Snacks
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Beef Shawarma Wrap', 'Spiced beef wrapped in pita bread', 99, 'a-la-carte', false, true, NULL),
  ('House Cheese Burger', 'Classic burger with special cheese sauce', 109, 'a-la-carte', false, true, NULL),
  ('French Fries', 'Crispy golden fries', 75, 'a-la-carte', true, true, NULL);

-- Insert Munchies
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Hungarian Sausage', 'Hungarian-style sausage', 109, 'munchies', false, true, NULL),
  ('Lumpia Shanghai', 'Deep-fried spring rolls', 75, 'munchies', true, true, NULL),
  ('Chicken Poppers', 'Bite-sized chicken pieces', 169, 'munchies', true, true, NULL);

-- Insert Pasta
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Mac & Cheese', 'Creamy macaroni and cheese', 149, 'pasta', true, true, NULL),
  ('Pasta Alfredo', 'Creamy alfredo pasta', 159, 'pasta', true, true, NULL),
  ('Pesto Pasta', 'Fresh basil pesto pasta', 149, 'pasta', true, true, NULL);

-- Insert Dessert
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Cheesecake Cups', 'Individual cheesecake servings', 65, 'dessert', true, true, NULL);

-- Insert Extras
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Plain Rice', 'Steamed white rice', 20, 'extras', true, true, NULL),
  ('Java Rice', 'Flavored turmeric rice', 25, 'extras', false, true, NULL),
  ('Garlic Rice', 'Garlic fried rice', 25, 'extras', true, true, NULL),
  ('Repeto', 'Additional serving', 60, 'extras', false, true, NULL),
  ('Fried Egg', 'Sunny-side up egg', 20, 'extras', true, true, NULL),
  ('Ice (Bag)', 'Bag of ice', 10, 'extras', false, true, NULL);

-- Insert Mains
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Beef Bibimbap', 'Korean mixed rice bowl with beef', 149, 'mains', true, true, NULL),
  ('Beef Shawarma Rice', 'Spiced beef shawarma over rice', 129, 'mains', true, true, NULL),
  ('Chicken Adobo Flakes', 'Shredded chicken adobo', 99, 'mains', false, true, NULL),
  ('Chicken Cordon Bleu', 'Stuffed chicken breast with ham and cheese', 139, 'mains', true, true, NULL),
  ('Chicken Pesto', 'Pesto-marinated chicken', 139, 'mains', true, true, NULL),
  ('Fried Chicken + Gravy', 'Crispy fried chicken with gravy', 139, 'mains', true, true, NULL),
  ('Grilled Pork Belly', 'Grilled pork belly', 149, 'mains', true, true, NULL),
  ('Kimchi Fried Rice + Egg', 'Spicy kimchi fried rice with egg', 139, 'mains', false, true, NULL),
  ('Pork Katsu', 'Breaded pork cutlet', 139, 'mains', true, true, NULL),
  ('Pork Pepper Rice', 'Peppered pork over rice', 149, 'mains', false, true, NULL),
  ('Pork Sisig + Egg', 'Sizzling pork sisig with egg', 139, 'mains', true, true, NULL);

-- Insert Crafted Drinks
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Brewed Coffee', 'Hot brewed coffee', 30, 'crafted-drinks', true, true, NULL),
  ('Iced Chocolate', 'Chocolate cold drink', 99, 'crafted-drinks', true, true, NULL),
  ('Iced Coffee', 'Cold coffee', 79, 'crafted-drinks', true, true, NULL),
  ('Blueberry Lemon Boba', 'Blueberry lemon tea with boba', 79, 'crafted-drinks', false, true, NULL),
  ('Lychee Lemon Boba', 'Lychee lemon tea with boba', 79, 'crafted-drinks', false, true, NULL),
  ('Blueberry Cloud', 'Blueberry flavored cloud drink', 99, 'crafted-drinks', true, true, NULL),
  ('Matcha Cloud', 'Matcha flavored cloud drink', 99, 'crafted-drinks', true, true, NULL),
  ('Strawberry Cloud', 'Strawberry flavored cloud drink', 99, 'crafted-drinks', true, true, NULL);
