-- Usuarios
INSERT INTO User (userId, name, mail, phone, password, isSupplier, isPremium, createdAt, updatedAt)
VALUES 
(1, 'Juan Pérez', 'juan.perez@example.com', '1234567890', 'contrasena123', 1, 0, '2024-01-01', '2024-01-01'),
(2, 'María López', 'maria.lopez@example.com', '0987654321', 'contrasena456', 0, 1, '2024-01-01', '2024-01-01');

-- Premium
INSERT INTO Premium (premiumId, userId, name, description, price, expiration, createdAt, updatedAt)
VALUES 
(1, 2, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01');

-- Categorías
INSERT INTO Categories (categoryId, name, description, subCategoryId, createdAt, updatedAt)
VALUES 
(1, 'Electrónica', 'Dispositivos electrónicos', 1, '2024-01-01', '2024-01-01'),
(2, 'Gasista', 'Tuberias y sistemas de gas natural', 2, '2024-01-01', '2024-01-01');

-- Publicaciones
INSERT INTO Post (postId, supplierId, title, category, description, reviewId, status, isHighlighted, price, createdAt, updatedAt)
VALUES 
(1, 1, 'Juan Electronica', 'Electrónica', 'Arreglo de TV', 1, 'Disponible', 1, 999.99, '2024-01-01', '2024-01-01'),
(2, 1, 'GasMaria', 'Gasista', 'Tuberias y sistemas de gas natural', 2, 'Disponible', 0, 299.99, '2024-01-01', '2024-01-01');

-- Pedidos
INSERT INTO Order (orderId, postId, category, supplierId, clientId, description, price, estimatedDate, couponId, createdAt, updatedAt)
VALUES 
(1, 1, 'Electrónica', 1, 2, 'Arreglo de TV', 999.99, '2024-01-05', NULL, '2024-01-01', '2024-01-01'),
(2, 2, 'Gasista', 1, 2, 'Arreglo de sistemas de gas natural', 29.99, '2024-01-05', NULL, '2024-01-01', '2024-01-01');

-- Cupones
INSERT INTO Coupons (couponId, name, description, discount, limit, expiration, createdAt, updatedAt)
VALUES 
(1, 'DESCUENTO10', '10% de descuento', 10, 100, '2024-12-31', '2024-01-01', '2024-01-01');

-- Reseñas
INSERT INTO Review (reviewId, rate, comentary, postId, Descripcion, clientId, createdAt, updatedAt)
VALUES 
(1, 5, 'Excelente servicio ', 1, 'El servicio fue perfecto, llegó a tiempo, fue rapido y eficaz', 2, '2024-01-02', '2024-01-02'),
(2, 4, 'Muy buen servicio', 2, 'Lo unico criticable fue que llegó 15 minutos tarde', 2, '2024-01-02', '2024-01-02');
