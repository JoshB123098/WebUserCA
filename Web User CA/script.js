const SUPABASE_URL = "https://bsdgoexarvlafcehwdiq.supabase.co";
const SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJzZGdvZXhhcnZsYWZjZWh3ZGlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzUwNzEzNzEsImV4cCI6MjA5MDY0NzM3MX0.7Hes-raxkjBBG0Cl0C8-dQT9GtiKp5lZIXkxASmGgb0";

// Fetch products from database
async function getProducts() {
  const response = await fetch(`${SUPABASE_URL}/rest/v1/products`, {
    headers: {
      apikey: SUPABASE_KEY,
      Authorization: `Bearer ${SUPABASE_KEY}`
    }
  });

  const products = await response.json();
  displayProducts(products);
}