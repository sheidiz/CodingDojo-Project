-- Usuarios
INSERT INTO User (userId, name, mail, phone, password, isSupplier, isPremium, createdAt, updatedAt)
VALUES 
(1, 'Juan Pérez', 'juan.perez@example.com', '1234567890', 'contrasena123', 1, 0, '2024-01-01', '2024-01-01'),
(2, 'María López', 'maria.lopez@example.com', '0987654321', 'contrasena456', 0, 1, '2024-01-01', '2024-01-01'),
(3, 'Carlos García', 'carlos.garcia@example.com', '2345678901', 'contrasena789', 1, 0, '2024-01-01', '2024-01-01'),
(4, 'Ana Torres', 'ana.torres@example.com', '3456789012', 'contrasena101', 0, 1, '2024-01-01', '2024-01-01'),
(5, 'Luis Martínez', 'luis.martinez@example.com', '4567890123', 'contrasena102', 1, 0, '2024-01-01', '2024-01-01'),
(6, 'Elena Gómez', 'elena.gomez@example.com', '5678901234', 'contrasena103', 0, 0, '2024-01-01', '2024-01-01'),
(7, 'Miguel Santos', 'miguel.santos@example.com', '6789012345', 'contrasena104', 1, 1, '2024-01-01', '2024-01-01');

-- Premium
INSERT INTO Premium (premiumId, userId, name, description, price, expiration, createdAt, updatedAt)
VALUES 
(1, 2, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(2, 3, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(3, 5, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(4, 7, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(5, 9, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(6, 12, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01');

-- Categorías
INSERT INTO Categories (categoryId, name, description, subCategoryId, createdAt, updatedAt)
VALUES 
(1, 'Electrónica', 'Dispositivos electrónicos', 1, '2024-01-01', '2024-01-01'),
(2, 'Gasista', 'Tuberias y sistemas de gas natural', 2, '2024-01-01', '2024-01-01'),
(3, 'Plomería', 'Servicios de plomería', 3, '2024-01-01', '2024-01-01'),
(4, 'Carpintería', 'Servicios de carpintería', 4, '2024-01-01', '2024-01-01'),
(5, 'Jardinería', 'Servicios de jardinería', 5, '2024-01-01', '2024-01-01');

-- Publicaciones
INSERT INTO Post (postId, supplierId, title, category, description, reviewId, status, isHighlighted, price, createdAt, updatedAt)
VALUES 
(1, 1, 'Juan Electronica', 'Electrónica', 'Arreglo de TV', 1, 'Disponible', 1, 999.99, '2024-01-01', '2024-01-01'),
(2, 1, 'GasMaria', 'Gasista', 'Tuberias y sistemas de gas natural', 2, 'Disponible', 0, 299.99, '2024-01-01', '2024-01-01'),
(3, 3, 'Carlos Plomería', 'Plomería', 'Reparación de tuberías', 3, 'Disponible', 0, 199.99, '2024-01-01', '2024-01-01'),
(4, 5, 'Luis Carpintería', 'Carpintería', 'Fabricación de muebles', 4, 'Disponible', 0, 499.99, '2024-01-01', '2024-01-01'),
(5, 7, 'Miguel Jardinería', 'Jardinería', 'Mantenimiento de jardines', 5, 'Disponible', 1, 299.99, '2024-01-01', '2024-01-01'),
(6, 1, 'Juan Electrodomésticos', 'Electrónica', 'Reparación de lavadoras', 6, 'Disponible', 0, 399.99, '2024-01-01', '2024-01-01'),
(7, 5, 'Luis Construcción', 'Carpintería', 'Construcción de casas', 7, 'Disponible', 1, 999.99, '2024-01-01', '2024-01-01'),
(8, 3, 'Carlos Gasista', 'Gasista', 'Instalación de sistemas de gas', 8, 'Disponible', 0, 299.99, '2024-01-01', '2024-01-01'),
(9, 7, 'Miguel Mantenimiento', 'Jardinería', 'Mantenimiento de áreas verdes', 9, 'Disponible', 0, 199.99, '2024-01-01', '2024-01-01'),
(10, 5, 'Luis Muebles', 'Carpintería', 'Restauración de muebles', 10, 'Disponible', 1, 299.99, '2024-01-01', '2024-01-01'),
(11, 3, 'Carlos Electricista', 'Electrónica', 'Instalación eléctrica', 11, 'Disponible', 0, 199.99, '2024-01-01', '2024-01-01'),
(12, 1, 'Juan Refrigeración', 'Electrónica', 'Reparación de aire acondicionado', 12, 'Disponible', 1, 599.99, '2024-01-01', '2024-01-01'),
(13, 7, 'Miguel Paisajismo', 'Jardinería', 'Diseño de jardines', 13, 'Disponible', 0, 499.99, '2024-01-01', '2024-01-01'),
(14, 5, 'Luis Ebanista', 'Carpintería', 'Talla de madera', 14, 'Disponible', 1, 399.99, '2024-01-01', '2024-01-01'),
(15, 3, 'Carlos Fontanero', 'Plomería', 'Instalación de sanitarios', 15, 'Disponible', 0, 299.99, '2024-01-01', '2024-01-01'),
(16, 1, 'Juan TV', 'Electrónica', 'Reparación de televisores', 16, 'Disponible', 1, 199.99, '2024-01-01', '2024-01-01'),
(17, 7, 'Miguel Flores', 'Jardinería', 'Cuidado de plantas', 17, 'Disponible', 0, 99.99, '2024-01-01', '2024-01-01'),
(18, 5, 'Luis Tejados', 'Carpintería', 'Reparación de tejados', 18, 'Disponible', 1, 499.99, '2024-01-01', '2024-01-01'),
(19, 3, 'Carlos Cocina', 'Plomería', 'Instalación de cocina', 19, 'Disponible', 0, 399.99, '2024-01-01', '2024-01-01'),
(20, 1, 'Juan Microondas', 'Electrónica', 'Reparación de microondas', 20, 'Disponible', 1, 199.99, '2024-01-01', '2024-01-01'),
(21, 7, 'Miguel Césped', 'Jardinería', 'Corte de césped', 21, 'Disponible', 0, 99.99, '2024-01-01', '2024-01-01'),
(22, 5, 'Luis Parquet', 'Carpintería', 'Instalación de parquet', 22, 'Disponible', 1, 299.99, '2024-01-01', '2024-01-01'),
(23, 3, 'Carlos Baños', 'Plomería', 'Reparación de baños', 23, 'Disponible', 0, 199.99, '2024-01-01', '2024-01-01'),
(24, 1, 'Juan Horno', 'Electrónica', 'Reparación de hornos', 24, 'Disponible', 1, 299.99, '2024-01-01', '2024-01-01'),
(25, 7, 'Miguel Árboles', 'Jardinería', 'Poda de árboles', 25, 'Disponible', 0, 199.99, '2024-01-01', '2024-01-01'),
(26, 5, 'Luis Marcos', 'Carpintería', 'Construcción de marcos', 26, 'Disponible', 1, 199.99, '2024-01-01', '2024-01-01'),
(27, 3, 'Carlos Calentador', 'Plomería', 'Instalación de calentadores', 27, 'Disponible', 0, 399.99, '2024-01-01', '2024-01-01'),
(28, 1, 'Juan Radio', 'Electrónica', 'Reparación de radios', 28, 'Disponible', 1, 99.99, '2024-01-01', '2024-01-01'),
(29, 7, 'Miguel Piscinas', 'Jardinería', 'Mantenimiento de piscinas', 29, 'Disponible', 0, 299.99, '2024-01-01', '2024-01-01'),
(30, 5, 'Luis Armarios', 'Carpintería', 'Construcción de armarios', 30, 'Disponible', 1, 499.99, '2024-01-01', '2024-01-01'),
(31, 3, 'Carlos Desagüe', 'Plomería', 'Desatasco de desagües', 31, 'Disponible', 0, 199.99, '2024-01-01', '2024-01-01'),
(32, 1, 'Juan Plancha', 'Electrónica', 'Reparación de planchas', 32, 'Disponible', 1, 99.99, '2024-01-01', '2024-01-01'),
(33, 7, 'Miguel Riego', 'Jardinería', 'Instalación de sistemas de riego', 33, 'Disponible', 0, 299.99, '2024-01-01', '2024-01-01'),
(34, 5, 'Luis Ventanas', 'Carpintería', 'Instalación de ventanas', 34, 'Disponible', 1, 299.99, '2024-01-01', '2024-01-01'),
(35, 3, 'Carlos Grifería', 'Plomería', 'Reparación de grifos', 35, 'Disponible', 0, 99.99, '2024-01-01', '2024-01-01'),
(36, 1, 'Juan Computadora', 'Electrónica', 'Reparación de computadoras', 36, 'Disponible', 1, 199.99, '2024-01-01', '2024-01-01'),
(37, 7, 'Miguel Paisaje', 'Jardinería', 'Diseño de paisajes', 37, 'Disponible', 0, 499.99, '2024-01-01', '2024-01-01'),
(38, 5, 'Luis Puertas', 'Carpintería', 'Reparación de puertas', 38, 'Disponible', 1, 199.99, '2024-01-01', '2024-01-01'),
(39, 3, 'Carlos Calderas', 'Plomería', 'Instalación de calderas', 39, 'Disponible', 0, 499.99, '2024-01-01', '2024-01-01'),
(40, 1, 'Juan Consola', 'Electrónica', 'Reparación de consolas', 40, 'Disponible', 1, 299.99, '2024-01-01', '2024-01-01');

-- Pedidos
INSERT INTO Order (orderId, postId, category, supplierId, clientId, description, price, estimatedDate, couponId, createdAt, updatedAt)
VALUES 
(1, 1, 'Electrónica', 1, 2, 'Arreglo de TV', 999.99, '2024-01-05', NULL, '2024-01-01', '2024-01-01'),
(2, 2, 'Gasista', 1, 2, 'Arreglo de sistemas de gas natural', 29.99, '2024-01-05', NULL, '2024-01-01', '2024-01-01'),
(3, 3, 'Plomería', 3, 4, 'Reparación de tuberías', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(4, 4, 'Carpintería', 5, 6, 'Fabricación de muebles', 499.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(5, 5, 'Jardinería', 7, 4, 'Mantenimiento de jardines', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(6, 6, 'Electrónica', 1, 4, 'Reparación de lavadoras', 399.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(7, 7, 'Carpintería', 5, 4, 'Construcción de casas', 999.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(8, 8, 'Gasista', 3, 4, 'Instalación de sistemas de gas', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(9, 9, 'Jardinería', 7, 4, 'Mantenimiento de áreas verdes', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(10, 10, 'Carpintería', 5, 4, 'Restauración de muebles', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(11, 11, 'Electrónica', 3, 4, 'Instalación eléctrica', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(12, 12, 'Electrónica', 1, 4, 'Reparación de aire acondicionado', 599.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(13, 13, 'Jardinería', 7, 4, 'Diseño de jardines', 499.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(14, 14, 'Carpintería', 5, 4, 'Talla de madera', 399.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(15, 15, 'Plomería', 3, 4, 'Instalación de sanitarios', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(16, 16, 'Electrónica', 1, 4, 'Reparación de televisores', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(17, 17, 'Jardinería', 7, 4, 'Cuidado de plantas', 99.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(18, 18, 'Carpintería', 5, 4, 'Reparación de tejados', 499.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(19, 19, 'Plomería', 3, 4, 'Instalación de cocina', 399.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(20, 20, 'Electrónica', 1, 4, 'Reparación de microondas', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(21, 21, 'Jardinería', 7, 4, 'Corte de césped', 99.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(22, 22, 'Carpintería', 5, 4, 'Instalación de parquet', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(23, 23, 'Plomería', 3, 4, 'Reparación de baños', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(24, 24, 'Electrónica', 1, 4, 'Reparación de hornos', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(25, 25, 'Jardinería', 7, 4, 'Poda de árboles', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(26, 26, 'Carpintería', 5, 4, 'Construcción de marcos', 199.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(27, 27, 'Plomería', 3, 4, 'Instalación de calentadores', 399.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(28, 28, 'Electrónica', 1, 4, 'Reparación de radios', 99.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(29, 29, 'Jardinería', 7, 4, 'Mantenimiento de piscinas', 299.99, '2024-01-10', NULL, '2024-01-01', '2024-01-01'),
(30, 30, 'Carpintería', 5, 4, 'Construcción de armarios', 499.99, '2024-01-10', 4, '2024-01-01', '2024-01-01'),
(31, 31, 'Plomería', 3, 4, 'Desatasco de desagües', 199.99, '2024-01-10', 5, '2024-01-01', '2024-01-01'),
(32, 32, 'Electrónica', 1, 4, 'Reparación de planchas', 99.99, '2024-01-10', 2, '2024-01-01', '2024-01-01'),
(33, 33, 'Jardinería', 7, 4, 'Instalación de sistemas de riego', 299.99, '2024-01-10', 3, '2024-01-01', '2024-01-01'),
(34, 34, 'Carpintería', 5, 4, 'Instalación de ventanas', 299.99, '2024-01-10', 4, '2024-01-01', '2024-01-01'),
(35, 35, 'Plomería', 3, 4, 'Reparación de grifos', 99.99, '2024-01-10', 5, '2024-01-01', '2024-01-01'),
(36, 36, 'Electrónica', 1, 4, 'Reparación de computadoras', 199.99, '2024-01-10', 2, '2024-01-01', '2024-01-01'),
(37, 37, 'Jardinería', 7, 4, 'Diseño de paisajes', 499.99, '2024-01-10', 3, '2024-01-01', '2024-01-01'),
(38, 38, 'Carpintería', 5, 4, 'Reparación de puertas', 199.99, '2024-01-10', 4, '2024-01-01', '2024-01-01'),
(39, 39, 'Plomería', 3, 4, 'Instalación de calderas', 499.99, '2024-01-10', 5, '2024-01-01', '2024-01-01'),
(40, 40, 'Electrónica', 1, 4, 'Reparación de consolas', 299.99, '2024-01-10', 2, '2024-01-01', '2024-01-01');

-- Cupones
INSERT INTO Coupons (couponId, name, description, discount, limit, expiration, createdAt, updatedAt)
VALUES 
(1, 'DESCUENTO10', '10% de descuento', 10, 100, '2024-12-31', '2024-01-01', '2024-01-01'),
(2, 'BIENVENIDO15', '15% de descuento en tu primer pedido', 15, 50, '2024-12-31', '2024-01-01', '2024-01-01'),
(3, 'VERANO20', '20% de descuento en servicios de jardinería', 20, 30, '2024-12-31', '2024-01-01', '2024-01-01'),
(4, 'CARPINTERO25', '25% de descuento en servicios de carpintería', 25, 20, '2024-12-31', '2024-01-01', '2024-01-01'),
(5, 'PLUMBING30', '30% de descuento en servicios de plomería', 30, 10, '2024-12-31', '2024-01-01', '2024-01-01');

-- Reseñas
INSERT INTO Review (reviewId, rate, comentary, postId, Descripcion, clientId, createdAt, updatedAt)
VALUES 
(1, 5, 'Excelente servicio ', 1, 'El servicio fue perfecto, llegó a tiempo, fue rapido y eficaz', 2, '2024-01-02', '2024-01-02'),
(2, 4, 'Muy buen servicio', 2, 'Lo unico criticable fue que llegó 15 minutos tarde', 2, '2024-01-02', '2024-01-02'),
(3, 4, 'Buen servicio, pero algo caro', 3, 'La reparación fue eficiente, pero el costo es elevado', 4, '2024-01-11', '2024-01-11'),
(4, 5, 'Excelente trabajo', 4, 'Los muebles quedaron perfectos', 6, '2024-01-11', '2024-01-11'),
(5, 3, 'Aceptable', 5, 'El mantenimiento del jardín estuvo bien, pero podría mejorar', 4, '2024-01-11', '2024-01-11'),
(6, 5, 'Muy buen servicio', 6, 'La reparación de la lavadora fue rápida y efectiva', 4, '2024-01-11', '2024-01-11'),
(7, 4, 'Satisfecho', 7, 'La construcción fue buena, pero tardaron un poco más de lo previsto', 4, '2024-01-11', '2024-01-11'),
(8, 5, 'Excelente', 8, 'Muy buena instalación del sistema de gas', 4, '2024-01-11', '2024-01-11'),
(9, 4, 'Buen trabajo', 9, 'El mantenimiento del área verde fue bueno', 4, '2024-01-11', '2024-01-11'),
(10, 5, 'Perfecto', 10, 'La restauración de los muebles fue excelente', 4, '2024-01-11', '2024-01-11'),
(11, 4, 'Buen servicio', 11, 'La instalación eléctrica fue satisfactoria', 4, '2024-01-11', '2024-01-11'),
(12, 5, 'Muy buen trabajo', 12, 'El aire acondicionado quedó perfecto', 4, '2024-01-11', '2024-01-11'),
(13, 5, 'Excelente', 13, 'El diseño del jardín quedó hermoso', 4, '2024-01-11', '2024-01-11'),
(14, 4, 'Buen trabajo', 14, 'La talla de madera es de muy buena calidad', 4, '2024-01-11', '2024-01-11'),
(15, 5, 'Perfecto', 15, 'La instalación del sanitario fue rápida y eficiente', 4, '2024-01-11', '2024-01-11'),
(16, 4, 'Buen servicio', 16, 'El televisor quedó bien reparado', 4, '2024-01-11', '2024-01-11'),
(17, 4, 'Buen trabajo', 17, 'El cuidado de las plantas fue adecuado', 4, '2024-01-11', '2024-01-11'),
(18, 5, 'Excelente', 18, 'La reparación del tejado fue muy buena', 4, '2024-01-11', '2024-01-11'),
(19, 5, 'Perfecto', 19, 'La instalación de la cocina quedó muy bien', 4, '2024-01-11', '2024-01-11'),
(20, 4, 'Buen servicio', 20, 'El microondas quedó bien reparado', 4, '2024-01-11', '2024-01-11'),
(21, 4, 'Buen trabajo', 21, 'El corte de césped fue adecuado', 4, '2024-01-11', '2024-01-11'),
(22, 5, 'Excelente', 22, 'La instalación del parquet quedó perfecta', 4, '2024-01-11', '2024-01-11'),
(23, 5, 'Perfecto', 23, 'La reparación del baño fue rápida y efectiva', 4, '2024-01-11', '2024-01-11'),
(24, 4, 'Buen servicio', 24, 'El horno quedó bien reparado', 4, '2024-01-11', '2024-01-11'),
(25, 4, 'Buen trabajo', 25, 'La poda de árboles fue adecuada', 4, '2024-01-11', '2024-01-11'),
(26, 5, 'Excelente', 26, 'La construcción de marcos quedó perfecta', 4, '2024-01-11', '2024-01-11'),
(27, 5, 'Perfecto', 27, 'La instalación del calentador fue rápida y efectiva', 4, '2024-01-11', '2024-01-11'),
(28, 4, 'Buen servicio', 28, 'La radio quedó bien reparada', 4, '2024-01-11', '2024-01-11'),
(29, 4, 'Buen trabajo', 29, 'El mantenimiento de la piscina fue adecuado', 4, '2024-01-11', '2024-01-11'),
(30, 5, 'Excelente', 30, 'La construcción de armarios quedó perfecta', 4, '2024-01-11', '2024-01-11'),
(31, 5, 'Perfecto', 31, 'El desatasco de desagües fue rápido y efectivo', 4, '2024-01-11', '2024-01-11'),
(32, 4, 'Buen servicio', 32, 'La plancha quedó bien reparada', 4, '2024-01-11', '2024-01-11'),
(33, 4, 'Buen trabajo', 33, 'La instalación del sistema de riego fue adecuada', 4, '2024-01-11', '2024-01-11'),
(34, 5, 'Excelente', 34, 'La instalación de ventanas quedó perfecta', 4, '2024-01-11', '2024-01-11'),
(35, 5, 'Perfecto', 35, 'La reparación del grifo fue rápida y efectiva', 4, '2024-01-11', '2024-01-11'),
(36, 4, 'Buen servicio', 36, 'La computadora quedó bien reparada', 4, '2024-01-11', '2024-01-11'),
(37, 5, 'Excelente', 37, 'El diseño del paisaje quedó hermoso', 4, '2024-01-11', '2024-01-11'),
(38, 5, 'Perfecto', 38, 'La reparación de la puerta fue rápida y efectiva', 4, '2024-01-11', '2024-01-11'),
(39, 5, 'Excelente', 39, 'La instalación de la caldera quedó perfecta', 4, '2024-01-11', '2024-01-11'),
(40, 5, 'Perfecto', 40, 'La reparación de la consola fue rápida y efectiva', 4, '2024-01-11', '2024-01-11');
