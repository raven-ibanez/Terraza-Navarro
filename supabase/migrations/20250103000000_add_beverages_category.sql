-- Add Beverages Category
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('beverages', 'Beverages', '🥤', 10, true)
ON CONFLICT (id) DO NOTHING;

-- Insert Beverage Items
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Soda 12oz', 'Refreshing soda drink', 25, 'beverages', false, true, NULL),
  ('Milkis', 'Sparkling milk drink', 45, 'beverages', false, true, NULL),
  ('Del Monte', 'Del Monte juice', 45, 'beverages', false, true, NULL),
  ('San Mig Flavored', 'Flavored beer', 75, 'beverages', true, true, NULL),
  ('San Mig Light', 'Light beer', 60, 'beverages', true, true, NULL),
  ('RH Stallion', 'RH Stallion beer', 55, 'beverages', true, true, NULL),
  ('RH 500', 'RH 500 bottle', 70, 'beverages', false, true, NULL),
  ('RH Litro', 'RH Litro bottle', 160, 'beverages', false, true, NULL),
  ('Pale Pilsen', 'Classic Pilsen beer', 55, 'beverages', true, true, NULL),
  ('Smirnoff Mule', 'Moscow Mule cocktail', 75, 'beverages', false, true, NULL)
ON CONFLICT (id) DO NOTHING;
