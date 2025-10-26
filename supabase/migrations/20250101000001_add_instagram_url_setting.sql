-- Add Instagram URL setting to site_settings table
INSERT INTO site_settings (id, value, type, description) VALUES
  ('instagram_url', 'https://instagram.com', 'text', 'Instagram profile URL')
ON CONFLICT (id) DO NOTHING;
