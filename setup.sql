-- ============================================
-- STUDENT ONLINE SHOP - DATABASE SETUP SCRIPT
-- Module: WADT H1002
-- TU Dublin - Tallaght Campus
-- ============================================

-- ============================================
-- 1. CREATE TABLES
-- ============================================

-- Categories table
CREATE TABLE IF NOT EXISTS categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Products table (with foreign key to categories)
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
  image_url TEXT,
  description TEXT,
  stock INTEGER DEFAULT 0,
  category_id INTEGER REFERENCES categories(id) ON DELETE SET NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Users table
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  address TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Orders table (with foreign key to products)
CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  quantity INTEGER NOT NULL CHECK (quantity > 0),
  total_price NUMERIC(10,2) NOT NULL CHECK (total_price >= 0),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ============================================
-- 2. INSERT SAMPLE DATA
-- ============================================

-- Insert categories
INSERT INTO categories (name, description) VALUES
  ('Electronics', 'Phones, laptops, accessories and gadgets'),
  ('Books', 'Textbooks, novels and study materials'),
  ('Clothing', 'T-shirts, hoodies, jackets and more'),
  ('Stationery', 'Pens, notebooks, folders and supplies'),
  ('Food and Drink', 'Snacks, energy drinks and campus essentials')
ON CONFLICT DO NOTHING;

-- Insert products
INSERT INTO products (name, price, image_url, description, stock, category_id) VALUES
  ('Laptop Stand', 29.99, 'images/laptop_web.jpg', 'Adjustable aluminium laptop stand', 50, 1),
  ('USB Hub', 19.99, 'images/Electronics_web.png', '7 port USB 3.0 hub', 100, 1),
  ('Python Programming Book', 24.99, 'images/books_web.jpg', 'Learn Python in 30 days', 30, 2),
  ('TU Dublin Hoodie', 39.99, 'images/hoodie.png', 'Official TU Dublin hoodie', 75, 3),
  ('Notebook Set', 7.99, 'images/stationary_web.jpg', 'Pack of 3 A4 notebooks', 200, 4),
  ('Energy Drink Pack', 14.99, 'images/food.jpg', 'Pack of 12 energy drinks', 150, 5)
ON CONFLICT DO NOTHING;

-- Insert users
INSERT INTO users (name, email, address) VALUES
  ('John Smith', 'john@tudublin.ie', '123 Main Street, Dublin'),
  ('Sarah Connor', 'sarah@tudublin.ie', '45 College Road, Dublin'),
  ('Mike Brown', 'mike@tudublin.ie', '78 Campus View, Tallaght')
ON CONFLICT DO NOTHING;

-- Insert orders
INSERT INTO orders (customer_name, product_id, quantity, total_price) VALUES
  ('John Smith', 1, 2, 59.98),
  ('Sarah Connor', 3, 1, 24.99),
  ('Mike Brown', 4, 3, 119.97)
ON CONFLICT DO NOTHING;

-- ============================================
-- 3. ENABLE ROW LEVEL SECURITY (RLS)
-- ============================================

-- Categories RLS
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Allow all" ON categories;
CREATE POLICY "Allow all" ON categories
  FOR ALL USING (true) WITH CHECK (true);

-- Products RLS
ALTER TABLE products ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Allow all" ON products;
CREATE POLICY "Allow all" ON products
  FOR ALL USING (true) WITH CHECK (true);

-- Users RLS
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Allow all" ON users;
CREATE POLICY "Allow all" ON users
  FOR ALL USING (true) WITH CHECK (true);

-- Orders RLS
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Allow all" ON orders;
CREATE POLICY "Allow all" ON orders
  FOR ALL USING (true) WITH CHECK (true);

-- ============================================
-- 4. VERIFY SETUP (optional - run to check)
-- ============================================
-- SELECT 'Categories: ' || COUNT(*) FROM categories;
-- SELECT 'Products: ' || COUNT(*) FROM products;
-- SELECT 'Users: ' || COUNT(*) FROM users;
-- SELECT 'Orders: ' || COUNT(*) FROM orders;
