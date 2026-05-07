killian bligh - A00025854


yageen04- yageen hagana-D24127901


# Student Shop – Web User Experience and Database Design

A web-based Student Shop application built with HTML, CSS, and JavaScript connected to Supabase.

## Group Members

| Name | GitHub Username | Page Responsible |
|------|----------------|-----------------|
|Yageen hagana | yageen04 | Orders |


## Live Site

🔗 [https://rawcdn.githack.com/JoshB123098/WebUserCA/main/index.html](https://rawcdn.githack.com/JoshB123098/WebUserCA/main/index.html)

## GitHub Repository

🔗 [https://github.com/JoshB123098/WebUserCA](https://github.com/JoshB123098/WebUserCA)

## Supabase Database

🔗 [https://supabase.com/dashboard/project/rgqyweaxmsyqwhutdqaa](https://supabase.com/dashboard/project/rgqyweaxmsyqwhutdqaa)

## Pages

| Page | Description |
|------|-------------|
| `index.html` | Home page — displays product categories from Supabase |
| `products.html` | Full CRUD for products — add, edit, delete products |
| `orders.html` | Full CRUD for orders — add, edit, delete customer orders |
| `users.html` | Full CRUD for users — add, edit, delete users |
| `categories.html` | Browse product categories |

## Features

- **Full CRUD** on Products, Orders, and Users pages
- **Live database** connection via Supabase REST API
- **Responsive design** with consistent green and white theme
- **SQL setup script** included (`orders_table.sql` and `setup.sql`)

## Tech Stack

- **Frontend:** HTML, CSS, JavaScript
- **Database:** Supabase (PostgreSQL)
- **Hosting:** GitHub + rawcdn.githack.com
- **Version Control:** GitHub (5 contributors)

## Database Tables

| Table | Columns |
|-------|---------|
| categories | id, name, description, created_at |
| products | id, name, price, image_url, description, stock, category_id, created_at |
| users | id, name, email, address, created_at |
| orders | id, customer_name, product_id, quantity, total_price, created_at |

## How to Run

1. Open the live link above in any browser — no installation needed
2. All pages connect directly to the shared Supabase database
3. To run locally, clone the repo and open any `.html` file — note that Supabase inserts only work when hosted online (not on 127.0.0.1)

## SQL Setup

The database setup script is included in the repository:
- `setup.sql` — creates all tables and inserts sample data
- `orders_table.sql` — creates the orders table specifically


