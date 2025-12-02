-- Clear existing data (optional)
-- DELETE FROM order_items;
-- DELETE FROM orders;
-- DELETE FROM menu_items;
-- DELETE FROM categories;
-- DELETE FROM customers;
-- Alternative: Use placeholder images
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/FF6B6B/FFFFFF?text=Coffee' WHERE category_id = 1;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/4ECDC4/FFFFFF?text=Tea' WHERE category_id = 2;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/45B7D1/FFFFFF?text=Cold+Drink' WHERE category_id = 3;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/96CEB4/FFFFFF?text=Breakfast' WHERE category_id = 4;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/FECA57/FFFFFF?text=Sandwich' WHERE category_id = 5;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/FF9FF3/FFFFFF?text=Salad' WHERE category_id = 6;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/54A0FF/FFFFFF?text=Bakery' WHERE category_id = 7;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/5F27CD/FFFFFF?text=Dessert' WHERE category_id = 8;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/00D2D3/FFFFFF?text=Smoothie' WHERE category_id = 9;
UPDATE menu_items SET image_url = 'https://via.placeholder.com/400x300/FF9F43/FFFFFF?text=Special' WHERE category_id = 10;
-- Insert Categories
INSERT INTO categories (name, description) VALUES
('Coffee & Espresso', 'Freshly brewed coffee and espresso drinks'),
('Tea', 'Premium tea selections'),
('Cold Beverages', 'Refreshing cold drinks'),
('Breakfast', 'Morning favorites'),
('Sandwiches & Wraps', 'Freshly made sandwiches'),
('Salads', 'Healthy salad options'),
('Bakery', 'Fresh baked goods'),
('Desserts', 'Sweet treats'),
('Smoothies', 'Fresh fruit smoothies'),
('Specials', 'Daily specials');

-- Insert Menu Items with Realistic Images
-- Coffee & Espresso
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Classic Espresso', 'Strong and rich single shot of espresso', 3.50, 1, true, 'https://images.unsplash.com/photo-1510591509098-f4fdc6d0ff04?w=400&h=300&fit=crop', NOW()),
('Double Espresso', 'Double shot for extra strength', 4.50, 1, true, 'https://images.unsplash.com/photo-1561047029-3000c68339ca?w=400&h=300&fit=crop', NOW()),
('Cappuccino', 'Perfect blend of espresso, steamed milk and foam', 4.75, 1, true, 'https://images.unsplash.com/photo-1534778101976-62847782c213?w=400&h=300&fit=crop', NOW()),
('Latte', 'Smooth espresso with steamed milk', 5.00, 1, true, 'https://images.unsplash.com/photo-1517256064527-09c73fc73e38?w=400&h=300&fit=crop', NOW()),
('Americano', 'Espresso shots topped with hot water', 4.25, 1, true, 'https://images.unsplash.com/photo-1541167760496-1628856ab772?w=400&h=300&fit=crop', NOW()),
('Mocha', 'Chocolate infused coffee with steamed milk', 5.50, 1, true, 'https://images.unsplash.com/photo-1568649929103-28ffbefaca1e?w=400&h=300&fit=crop', NOW()),
('Macchiato', 'Espresso with a dollop of milk foam', 4.50, 1, true, 'https://images.unsplash.com/photo-1511537190424-bbbab87ac5eb?w=400&h=300&fit=crop', NOW()),
('Flat White', 'Ristretto shots with velvety milk', 5.25, 1, true, 'https://images.unsplash.com/photo-1517701604599-bb29b565090c?w=400&h=300&fit=crop', NOW()),
('Iced Coffee', 'Chilled coffee served over ice', 4.75, 1, true, 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400&h=300&fit=crop', NOW()),
('Cold Brew', 'Slow-steeped cold coffee', 5.00, 1, true, 'https://images.unsplash.com/photo-1550985543-7f0072801e0c?w=400&h=300&fit=crop', NOW());

-- Tea
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Classic Black Tea', 'Premium Assam black tea', 3.25, 2, true, 'https://images.unsplash.com/photo-1561047029-3000c68339ca?w=400&h=300&fit=crop', NOW()),
('Green Tea', 'Refreshing Japanese green tea', 3.50, 2, true, 'https://images.unsplash.com/photo-1551961467-946fa31a9ad5?w=400&h=300&fit=crop', NOW()),
('Earl Grey', 'Black tea with bergamot orange', 3.75, 2, true, 'https://images.unsplash.com/photo-1569794362478-a9ad17d8a8b7?w=400&h=300&fit=crop', NOW()),
('Chai Latte', 'Spiced tea with steamed milk', 4.75, 2, true, 'https://images.unsplash.com/photo-1561336313-0bd5e0b27ec8?w=400&h=300&fit=crop', NOW()),
('Peppermint Tea', 'Refreshing herbal peppermint', 3.50, 2, true, 'https://images.unsplash.com/photo-1597318181409-cf64d0b5d8a2?w=400&h=300&fit=crop', NOW()),
('Jasmine Tea', 'Green tea with jasmine flowers', 4.00, 2, true, 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=400&h=300&fit=crop', NOW()),
('Matcha Latte', 'Japanese green tea powder with milk', 5.50, 2, true, 'https://images.unsplash.com/photo-1559056199-5a0e5b21f5bc?w=400&h=300&fit=crop', NOW()),
('Herbal Infusion', 'Caffeine-free herbal blend', 3.75, 2, true, 'https://images.unsplash.com/photo-1580651315530-69c8e74969b9?w=400&h=300&fit=crop', NOW());

-- Cold Beverages
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Fresh Lemonade', 'Homemade fresh squeezed lemonade', 4.25, 3, true, 'https://images.unsplash.com/photo-1621264968372-7e7a6c4c1f6c?w=400&h=300&fit=crop', NOW()),
('Iced Tea', 'Fresh brewed tea served chilled', 3.75, 3, true, 'https://images.unsplash.com/photo-1567968204574-4d0c43c7da43?w=400&h=300&fit=crop', NOW()),
('Fresh Orange Juice', 'Freshly squeezed orange juice', 4.50, 3, true, 'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?w=400&h=300&fit=crop', NOW()),
('Sparkling Water', 'Natural sparkling water', 2.50, 3, true, 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=400&h=300&fit=crop', NOW()),
('Coca-Cola', 'Classic Coca-Cola', 2.75, 3, true, 'https://images.unsplash.com/photo-1554866585-cd94860890b7?w=400&h=300&fit=crop', NOW()),
('Mineral Water', 'Natural spring water', 2.00, 3, true, 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=400&h=300&fit=crop', NOW()),
('Mango Lassi', 'Refreshing mango yogurt drink', 4.75, 3, true, 'https://images.unsplash.com/photo-1571575173700-afb9492e6a50?w=400&h=300&fit=crop', NOW());

-- Breakfast
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Avocado Toast', 'Smashed avocado on sourdough', 8.50, 4, true, 'https://images.unsplash.com/photo-1541519227354-08fa5d50c44d?w=400&h=300&fit=crop', NOW()),
('Breakfast Bagel', 'Toasted bagel with cream cheese', 6.75, 4, true, 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?w=400&h=300&fit=crop', NOW()),
('French Toast', 'Brioche french toast with maple syrup', 9.50, 4, true, 'https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=400&h=300&fit=crop', NOW()),
('Breakfast Burrito', 'Eggs, cheese, and veggies in tortilla', 8.75, 4, true, 'https://images.unsplash.com/photo-1551782450-17144efb9c50?w=400&h=300&fit=crop', NOW()),
('Greek Yogurt Bowl', 'Yogurt with granola and fresh fruits', 7.50, 4, true, 'https://images.unsplash.com/photo-1488477181946-6428a0291777?w=400&h=300&fit=crop', NOW()),
('Eggs Benedict', 'Poached eggs with hollandaise sauce', 10.50, 4, true, 'https://images.unsplash.com/photo-1551782450-17144efb9c50?w=400&h=300&fit=crop', NOW()),
('Pancake Stack', 'Three fluffy pancakes with syrup', 8.25, 4, true, 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=400&h=300&fit=crop', NOW());

-- Sandwiches & Wraps
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Turkey Club', 'Triple decker turkey sandwich', 9.75, 5, true, 'https://images.unsplash.com/photo-1481070414801-51fd732d7184?w=400&h=300&fit=crop', NOW()),
('Chicken Caesar Wrap', 'Grilled chicken in caesar wrap', 8.50, 5, true, 'https://images.unsplash.com/photo-1563379926898-05f4575a45d8?w=400&h=300&fit=crop', NOW()),
('Veggie Delight', 'Fresh vegetables with hummus', 7.75, 5, true, 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400&h=300&fit=crop', NOW()),
('BLT Sandwich', 'Classic bacon, lettuce, tomato', 8.25, 5, true, 'https://images.unsplash.com/photo-1551503759-13c82d8318c8?w=400&h=300&fit=crop', NOW()),
('Grilled Cheese', 'Three cheese blend grilled sandwich', 7.50, 5, true, 'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=400&h=300&fit=crop', NOW()),
('Italian Sub', 'Assorted Italian meats and cheese', 9.25, 5, true, 'https://images.unsplash.com/photo-1546069901-d5bfd2cbfb1f?w=400&h=300&fit=crop', NOW()),
('Tuna Salad Sandwich', 'Fresh tuna salad on whole wheat', 8.00, 5, true, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400&h=300&fit=crop', NOW());

-- Salads
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Caesar Salad', 'Romaine lettuce with caesar dressing', 8.50, 6, true, 'https://images.unsplash.com/photo-1546793665-c74683f339c1?w=400&h=300&fit=crop', NOW()),
('Greek Salad', 'Fresh vegetables with feta cheese', 9.00, 6, true, 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=400&h=300&fit=crop', NOW()),
('Cobb Salad', 'Mixed greens with chicken and bacon', 10.50, 6, true, 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400&h=300&fit=crop', NOW()),
('Quinoa Bowl', 'Quinoa with roasted vegetables', 9.75, 6, true, 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?w=400&h=300&fit=crop', NOW()),
('Spinach Salad', 'Fresh spinach with strawberries', 8.25, 6, true, 'https://images.unsplash.com/photo-1476124369491-e7addf5db371?w=400&h=300&fit=crop', NOW()),
('Chicken Salad', 'Grilled chicken with mixed greens', 9.50, 6, true, 'https://images.unsplash.com/photo-1562967916-eb82221dfb92?w=400&h=300&fit=crop', NOW());

-- Bakery
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Butter Croissant', 'Freshly baked French croissant', 3.50, 7, true, 'https://images.unsplash.com/photo-1555507036-ab794f27d2e9?w=400&h=300&fit=crop', NOW()),
('Chocolate Croissant', 'Croissant with chocolate filling', 4.25, 7, true, 'https://images.unsplash.com/photo-1558326567-98ae2405596b?w=400&h=300&fit=crop', NOW()),
('Blueberry Muffin', 'Fresh blueberry muffin', 3.75, 7, true, 'https://images.unsplash.com/photo-1576866209830-589e1bfbaa4d?w=400&h=300&fit=crop', NOW()),
('Chocolate Chip Cookie', 'Fresh baked cookie', 2.50, 7, true, 'https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=400&h=300&fit=crop', NOW()),
('Cinnamon Roll', 'Fresh cinnamon roll with icing', 4.50, 7, true, 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=300&fit=crop', NOW()),
('Bagel with Cream Cheese', 'Fresh bagel with cream cheese', 4.00, 7, true, 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?w=400&h=300&fit=crop', NOW()),
('Almond Danish', 'Flaky danish with almond filling', 4.25, 7, true, 'https://images.unsplash.com/photo-1559622214-f8a9850965bb?w=400&h=300&fit=crop', NOW()),
('Sourdough Bread', 'Freshly baked sourdough loaf', 5.50, 7, true, 'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400&h=300&fit=crop', NOW());

-- Desserts
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('New York Cheesecake', 'Classic New York style cheesecake', 6.50, 8, true, 'https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?w=400&h=300&fit=crop', NOW()),
('Chocolate Brownie', 'Rich chocolate brownie', 4.75, 8, true, 'https://images.unsplash.com/photo-1606313564200-75f0c38d6c30?w=400&h=300&fit=crop', NOW()),
('Tiramisu', 'Italian coffee-flavored dessert', 7.25, 8, true, 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=400&h=300&fit=crop', NOW()),
('Chocolate Mousse', 'Rich chocolate mousse', 5.50, 8, true, 'https://images.unsplash.com/photo-1578985545060-8dfd0a407f04?w=400&h=300&fit=crop', NOW()),
('Fruit Tart', 'Fresh fruit tart with custard', 6.00, 8, true, 'https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?w=400&h=300&fit=crop', NOW()),
('Carrot Cake', 'Moist carrot cake with cream cheese', 5.75, 8, true, 'https://images.unsplash.com/photo-1578985545060-8dfd0a407f04?w=400&h=300&fit=crop', NOW()),
('Red Velvet Cupcake', 'Classic red velvet cupcake', 4.25, 8, true, 'https://images.unsplash.com/photo-1614707267537-b85aaf00c4b7?w=400&h=300&fit=crop', NOW()),
('Apple Pie', 'Homemade apple pie slice', 5.25, 8, true, 'https://images.unsplash.com/photo-1561626423-a51b45aef0a4?w=400&h=300&fit=crop', NOW());

-- Smoothies
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Berry Blast Smoothie', 'Mixed berries with yogurt', 6.50, 9, true, 'https://images.unsplash.com/photo-1505252585461-04db1eb84625?w=400&h=300&fit=crop', NOW()),
('Tropical Paradise', 'Mango, pineapple and banana', 6.75, 9, true, 'https://images.unsplash.com/photo-1519996529931-28324d5a630e?w=400&h=300&fit=crop', NOW()),
('Green Detox', 'Spinach, kale and green apple', 6.25, 9, true, 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?w=400&h=300&fit=crop', NOW()),
('Protein Power', 'Banana, peanut butter and protein', 7.00, 9, true, 'https://images.unsplash.com/photo-1553530666-ba11f21d3b0d?w=400&h=300&fit=crop', NOW()),
('Strawberry Banana', 'Classic strawberry banana blend', 6.00, 9, true, 'https://images.unsplash.com/photo-1570913199992-91d07c140e7a?w=400&h=300&fit=crop', NOW()),
('Mango Tango', 'Fresh mango with orange juice', 6.50, 9, true, 'https://images.unsplash.com/photo-1571575173700-afb9492e6a50?w=400&h=300&fit=crop', NOW());

-- Specials
INSERT INTO menu_items (name, description, price, category_id, available, image_url, created_at) VALUES
('Chef''s Special Coffee', 'Seasonal special coffee blend', 5.75, 10, true, 'https://images.unsplash.com/photo-1498804103079-a6351b050096?w=400&h=300&fit=crop', NOW()),
('Daily Soup', 'Homemade soup of the day', 5.50, 10, true, 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=400&h=300&fit=crop', NOW()),
('Special Pastry', 'Baker''s choice pastry', 4.50, 10, true, 'https://images.unsplash.com/photo-1555507036-ab794f27d2e9?w=400&h=300&fit=crop', NOW()),
('Weekend Brunch Special', 'Special weekend brunch plate', 12.50, 10, true, 'https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=400&h=300&fit=crop', NOW());

-- Insert Sample Customers
INSERT INTO customers (name, email, phone, address, created_at) VALUES
('Rajesh Kumar', 'rajesh.kumar@example.com', '9876543210', '123 MG Road, Bangalore', NOW()),
('Priya Sharma', 'priya.sharma@example.com', '9876543211', '456 Koramangala, Bangalore', NOW()),
('Amit Patel', 'amit.patel@example.com', '9876543212', '789 Indiranagar, Bangalore', NOW()),
('Neha Gupta', 'neha.gupta@example.com', '9876543213', '321 Jayanagar, Bangalore', NOW()),
('Vikram Singh', 'vikram.singh@example.com', '9876543214', '654 Whitefield, Bangalore', NOW()),
('Anjali Mehta', 'anjali.mehta@example.com', '9876543215', '987 HSR Layout, Bangalore', NOW()),
('Rohit Verma', 'rohit.verma@example.com', '9876543216', '159 Marathahalli, Bangalore', NOW()),
('Sneha Reddy', 'sneha.reddy@example.com', '9876543217', '753 Bellandur, Bangalore', NOW()),
('Karan Malhotra', 'karan.malhotra@example.com', '9876543218', '456 BTM Layout, Bangalore', NOW()),
('Pooja Joshi', 'pooja.joshi@example.com', '9876543219', '852 Electronic City, Bangalore', NOW());

-- Insert Sample Orders
INSERT INTO orders (order_number, customer_id, total_amount, status, order_date) VALUES
('ORD-1001', 1, 15.75, 'DELIVERED', DATE_SUB(NOW(), INTERVAL 7 DAY)),
('ORD-1002', 2, 22.50, 'PREPARING', DATE_SUB(NOW(), INTERVAL 3 DAY)),
('ORD-1003', 3, 18.25, 'PENDING', DATE_SUB(NOW(), INTERVAL 1 DAY)),
('ORD-1004', 1, 32.00, 'CONFIRMED', DATE_SUB(NOW(), INTERVAL 5 HOUR)),
('ORD-1005', 4, 12.75, 'READY', DATE_SUB(NOW(), INTERVAL 2 HOUR)),
('ORD-1006', 5, 25.50, 'DELIVERED', DATE_SUB(NOW(), INTERVAL 2 DAY)),
('ORD-1007', 6, 19.25, 'CANCELLED', DATE_SUB(NOW(), INTERVAL 4 DAY)),
('ORD-1008', 7, 28.75, 'DELIVERED', DATE_SUB(NOW(), INTERVAL 6 DAY)),
('ORD-1009', 8, 14.50, 'PREPARING', NOW()),
('ORD-1010', 9, 21.00, 'PENDING', NOW());

-- Insert Sample Order Items
-- Order 1 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(1, 1, 1, 3.50),  -- Classic Espresso
(1, 9, 1, 3.75),  -- Blueberry Muffin
(1, 15, 1, 2.50), -- Chocolate Chip Cookie
(1, 21, 1, 6.00); -- Fresh Orange Juice

-- Order 2 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(2, 3, 2, 4.75),  -- Cappuccino (2)
(2, 13, 1, 8.50), -- Avocado Toast
(2, 25, 1, 4.50); -- Cinnamon Roll

-- Order 3 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(3, 4, 1, 5.00),  -- Latte
(3, 16, 1, 4.00), -- Bagel with Cream Cheese
(3, 30, 1, 9.25); -- Turkey Club

-- Order 4 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(4, 5, 1, 4.25),  -- Americano
(4, 18, 1, 5.50), -- Almond Danish
(4, 31, 2, 8.50), -- Chicken Caesar Wrap (2)
(4, 40, 1, 5.50); -- Chocolate Mousse

-- Order 5 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(5, 6, 1, 5.50),  -- Mocha
(5, 20, 1, 7.25); -- Tiramisu

-- Order 6 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(6, 7, 2, 4.50),  -- Macchiato (2)
(6, 29, 1, 9.00), -- Greek Salad
(6, 35, 1, 7.25); -- Berry Blast Smoothie

-- Order 7 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(7, 8, 1, 5.25),  -- Flat White
(7, 22, 1, 8.50), -- Caesar Salad
(7, 26, 1, 5.50); -- Sourdough Bread

-- Order 8 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(8, 10, 2, 5.00),  -- Cold Brew (2)
(8, 24, 1, 10.50), -- Eggs Benedict
(8, 33, 1, 8.75),  -- Grilled Cheese
(8, 39, 1, 5.00);  -- Carrot Cake

-- Order 9 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(9, 11, 1, 3.25),  -- Classic Black Tea
(9, 17, 1, 4.25),  -- Chocolate Croissant
(9, 32, 1, 7.00);  -- Veggie Delight

-- Order 10 Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(10, 12, 1, 3.50),  -- Green Tea
(10, 27, 1, 7.50),  -- Greek Yogurt Bowl
(10, 34, 1, 10.00); -- Chef's Special Coffee

-- Insert more orders for variety
INSERT INTO orders (order_number, customer_id, total_amount, status, order_date) VALUES
('ORD-1011', 10, 16.25, 'DELIVERED', DATE_SUB(NOW(), INTERVAL 1 DAY)),
('ORD-1012', 2, 24.75, 'PREPARING', DATE_SUB(NOW(), INTERVAL 12 HOUR)),
('ORD-1013', 3, 31.50, 'CONFIRMED', DATE_SUB(NOW(), INTERVAL 6 HOUR)),
('ORD-1014', 5, 18.00, 'READY', DATE_SUB(NOW(), INTERVAL 3 HOUR)),
('ORD-1015', 7, 22.25, 'PENDING', NOW());

-- More Order Items
INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(11, 14, 1, 3.75),  -- Earl Grey
(11, 23, 1, 8.25),  -- Spinach Salad
(11, 36, 1, 4.25);  -- Red Velvet Cupcake

INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(12, 19, 2, 5.50),  -- Chocolate Brownie (2)
(12, 28, 1, 9.50),  -- Chicken Salad
(12, 37, 1, 6.50),  -- Berry Blast Smoothie
(12, 41, 1, 3.50);  -- Butter Croissant

INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(13, 2, 3, 4.50),   -- Double Espresso (3)
(13, 38, 1, 6.75),  -- Tropical Paradise
(13, 42, 1, 12.50); -- Weekend Brunch Special

INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(14, 43, 2, 4.50),  -- Special Pastry (2)
(14, 44, 1, 9.00);  -- Quinoa Bowl

INSERT INTO order_items (order_id, menu_item_id, quantity, price) VALUES
(15, 45, 1, 5.25),  -- Apple Pie
(15, 46, 1, 8.50),  -- BLT Sandwich
(15, 47, 1, 6.50),  -- Mango Lassi
(15, 48, 1, 2.00);  -- Mineral Water

-- Update order totals based on inserted items
UPDATE orders SET total_amount = 15.75 WHERE id = 1;
UPDATE orders SET total_amount = 22.50 WHERE id = 2;
UPDATE orders SET total_amount = 18.25 WHERE id = 3;
UPDATE orders SET total_amount = 32.00 WHERE id = 4;
UPDATE orders SET total_amount = 12.75 WHERE id = 5;
UPDATE orders SET total_amount = 25.50 WHERE id = 6;
UPDATE orders SET total_amount = 19.25 WHERE id = 7;
UPDATE orders SET total_amount = 28.75 WHERE id = 8;
UPDATE orders SET total_amount = 14.50 WHERE id = 9;
UPDATE orders SET total_amount = 21.00 WHERE id = 10;
UPDATE orders SET total_amount = 16.25 WHERE id = 11;
UPDATE orders SET total_amount = 24.75 WHERE id = 12;
UPDATE orders SET total_amount = 31.50 WHERE id = 13;
UPDATE orders SET total_amount = 18.00 WHERE id = 14;
UPDATE orders SET total_amount = 22.25 WHERE id = 15;

-- Display summary
SELECT 'Data inserted successfully!' as message;
SELECT COUNT(*) as total_categories FROM categories;
SELECT COUNT(*) as total_menu_items FROM menu_items;
SELECT COUNT(*) as total_customers FROM customers;
SELECT COUNT(*) as total_orders FROM orders;
SELECT COUNT(*) as total_order_items FROM order_items;