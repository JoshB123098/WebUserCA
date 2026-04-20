CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  customer_name TEXT NOT NULL,
  product_id INTEGER,
  quantity INTEGER NOT NULL,
  total_price NUMERIC(10,2) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
