killian bligh - A00025854


yageen04- yageen hagana-D24127901


# Student Shop – Web User Experience and Database Design

A web-based Student Shop application built with HTML, CSS, and JavaScript connected to Supabase.

## Group Members

| Name | GitHub Username | Page Responsible |
|------|----------------|-----------------|
|Yageen hagana | yageen04 | Orders |


## Pages

| Page | Description |
|------|-------------|

| `orders.html` | Full CRUD for orders — add, edit, delete customer orders |

## Features

- **Full CRUD** on Products, Orders, and Users pages
- **Live database** connection via Supabase REST API
- **Responsive design** with consistent green and white theme
- **SQL setup script** included (`orders_table.sql` and `setup.sql`)



## Database Tables

| Table | Columns |
|-------|---------|
| categories | id, name, description, created_at |
| products | id, name, price, image_url, description, stock, category_id, created_at |
| users | id, name, email, address, created_at |
| orders | id, customer_name, product_id, quantity, total_price, created_at |





