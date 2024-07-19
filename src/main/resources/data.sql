-- Usuarios
INSERT INTO users (full_name, email, phone_number, password, isSupplier, isPremium, created_at, updated_at)
VALUES 
('Juan Electronica', 'juan.perez@example.com', '1234567890', 'contrasena123', 1, 0, '2024-01-01', '2024-01-01'),
('María López', 'maria.lopez@example.com', '0987654321', 'contrasena456', 0, 1, '2024-01-01', '2024-01-01'),
('Carlos Plomero', 'carlos.garcia@example.com', '', 'contrasena789', 1, 0, '2024-01-01', '2024-01-01'),
('Ana Torres', 'ana.torres@example.com', '3456789012', 'contrasena101', 0, 1, '2024-01-01', '2024-01-01'),
('Luis Martínez Carpintero', 'luis.martinez@example.com', '4567890123', 'contrasena102', 1, 0, '2024-01-01', '2024-01-01'),
('Elena Gómez', 'elena.gomez@example.com', '5678901234', 'contrasena103', 0, 0, '2024-01-01', '2024-01-01'),
('Miguel Mantenimiento', 'miguel.santos@example.com', '6789012345', 'contrasena104', 1, 1, '2024-01-01', '2024-01-01');

-- Premium [esta no se si esta bien porque hay usuarios no suppliers]
INSERT INTO premium (userId, name, description, price, expiration, created_at, updated_at)
VALUES 
(2, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(3, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(5, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(7, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(9, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01'),
(12, 'Usuario Premium', 'Acceso a funciones premium', 19.99, '2024-12-31', '2024-01-01', '2024-01-01');

-- Publicaciones
INSERT INTO posts (supplier_id, category, subCategory, title, description, status, price, isHighlighted, created_at, updated_at)
VALUES 
(1, 'Electricista', 'Reparacion', 'Arreglo de TV', 'Servicio profesional de reparación de televisores', true, 999.99, true, '2024-01-01', '2024-01-01'),
(1, 'Gasista', 'Instalacion', 'Tuberías y sistemas de gas natural', 'Instalación y mantenimiento de tuberías y sistemas de gas natural', true, 299.99, false, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparacion', 'Reparación de tuberías', 'Reparación profesional de tuberías de agua', true, 199.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricacion', 'Fabricación de muebles', 'Construcción y diseño de muebles a medida', true, 499.99, false, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Mantenimiento de jardines', 'Servicio completo de mantenimiento de jardines', true, 299.99, true, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de lavadoras', 'Reparación de lavadoras de todas las marcas', true, 399.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricacion', 'Construcción de casas', 'Diseño y construcción de casas de madera', true, 999.99, true, '2024-01-01', '2024-01-01'),
(3, 'Gasista', 'Instalacion', 'Instalación de sistemas de gas', 'Instalación segura de sistemas de gas', true, 299.99, false, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Mantenimiento de áreas verdes', 'Cuidado y mantenimiento de áreas verdes', true, 199.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Reparacion', 'Restauración de muebles', 'Reparación y restauración de muebles antiguos', true, 299.99, true, '2024-01-01', '2024-01-01'),
(3, 'Electricista', 'Instalacion', 'Instalación eléctrica', 'Instalación de sistemas eléctricos', true, 199.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de aire acondicionado', 'Servicio de reparación de aire acondicionado', true, 599.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Diseño de jardines', 'Diseño y planificación de jardines', true, 499.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricacion', 'Talla de madera', 'Talla y escultura en madera', true, 399.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Instalacion', 'Instalación de sanitarios', 'Instalación de sistemas sanitarios completos', true, 299.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de televisores', 'Reparación de televisores de todas las marcas', true, 199.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Cuidado de plantas', 'Cuidado y mantenimiento de plantas', true, 99.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Reparacion', 'Reparación de tejados', 'Reparación de tejados de madera', true, 499.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Instalacion', 'Instalación de cocina', 'Instalación de sistemas de cocina', true, 399.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de microondas', 'Reparación de microondas de todas las marcas', true, 199.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Corte de césped', 'Corte y mantenimiento de césped', true, 99.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Instalacion', 'Instalación de parquet', 'Instalación de pisos de parquet', true, 299.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparacion', 'Reparación de baños', 'Reparación de baños y tuberías', true, 199.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de hornos', 'Reparación de hornos eléctricos y a gas', true, 299.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Poda de árboles', 'Servicio de poda y cuidado de árboles', true, 199.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricacion', 'Construcción de marcos', 'Fabricación y diseño de marcos a medida', true, 199.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Instalacion', 'Instalación de calentadores', 'Instalación de calentadores de agua', true, 399.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de radios', 'Reparación de radios antiguas y modernas', true, 99.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Mantenimiento de piscinas', 'Cuidado y mantenimiento de piscinas', true, 299.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricacion', 'Construcción de armarios', 'Diseño y construcción de armarios a medida', true, 499.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparacion', 'Desatasco de desagües', 'Desatasco y limpieza de desagües', true, 199.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de planchas', 'Reparación de planchas eléctricas', true, 99.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Instalacion', 'Instalación de sistemas de riego', 'Instalación y mantenimiento de sistemas de riego', true, 299.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Instalacion', 'Instalación de ventanas', 'Instalación de ventanas de madera y aluminio', true, 299.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparacion', 'Reparación de grifos', 'Reparación de grifos y llaves de paso', true, 99.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparacion', 'Reparación de computadoras', 'Reparación de computadoras y laptops', true, 199.99, true, '2024-01-01', '2024-01-01');

-- Pedidos
INSERT INTO orders (postId, category, subCategory, title, description, price, estimated_date, status, coupon_id, created_at, updated_at)
VALUES 
(1, 'Electricista', 'Reparación', 'Arreglo de TV', 'Arreglo de TV', 999.99, '2024-01-05', 0, NULL, '2024-01-01', '2024-01-01'),
(2, 'Gasista', 'Reparación', 'Arreglo de sistemas de gas natural', 'Arreglo de sistemas de gas natural', 29.99, '2024-01-05', 0, NULL, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparación', 'Reparación de tuberías', 'Reparación de tuberías', 199.99, '2024-01-10', 0, 5, '2024-01-01', '2024-01-01'),
(4, 'Carpintero', 'Instalación', 'Fabricación de muebles', 'Fabricación de muebles', 499.99, '2024-01-10', 0, 4, '2024-01-01', '2024-01-01'),
(5, 'Jardinero', 'Mantenimiento', 'Mantenimiento de jardines', 'Mantenimiento de jardines', 299.99, '2024-01-10', 0, 3, '2024-01-01', '2024-01-01'),
(6, 'Electricista', 'Reparación', 'Reparación de lavadoras', 'Reparación de lavadoras', 399.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(7, 'Carpintero', 'Instalación', 'Construcción de casas', 'Construcción de casas', 999.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(8, 'Gasista', 'Instalación', 'Instalación de sistemas de gas', 'Instalación de sistemas de gas', 299.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(9, 'Jardinero', 'Mantenimiento', 'Mantenimiento de áreas verdes', 'Mantenimiento de áreas verdes', 199.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(10, 'Carpintero', 'Restauración', 'Restauración de muebles', 'Restauración de muebles', 299.99, '2024-01-10', -1, NULL, '2024-01-01', '2024-01-01'),
(11, 'Electricista', 'Reparación', 'Instalación eléctrica', 'Instalación eléctrica', 199.99, '2024-01-10', 1, 1, '2024-01-01', '2024-01-01'),
(12, 'Electricista', 'Reparación', 'Reparación de aire acondicionado', 'Reparación de aire acondicionado', 599.99, '2024-01-10', 1, 1, '2024-01-01', '2024-01-01'),
(13, 'Jardinero', 'Diseño', 'Diseño de jardines', 'Diseño de jardines', 499.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(14, 'Carpintero', 'Restauración', 'Talla de madera', 'Talla de madera', 399.99, '2024-01-10', -1, NULL, '2024-01-01', '2024-01-01'),
(15, 'Plomero', 'Instalación', 'Instalación de sanitarios', 'Instalación de sanitarios', 299.99, '2024-01-10', 1, 5, '2024-01-01', '2024-01-01'),
(16, 'Electricista', 'Reparación', 'Reparación de televisores', 'Reparación de televisores', 199.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(17, 'Jardinero', 'Mantenimiento', 'Cuidado de plantas', 'Cuidado de plantas', 99.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(18, 'Carpintero', 'Restauración', 'Reparación de tejados', 'Reparación de tejados', 499.99, '2024-01-10', 1, 4, '2024-01-01', '2024-01-01'),
(19, 'Plomero', 'Instalación', 'Instalación de cocina', 'Instalación de cocina', 399.99, '2024-01-10', -1, NULL, '2024-01-01', '2024-01-01'),
(20, 'Electricista', 'Reparación', 'Reparación de microondas', 'Reparación de microondas', 199.99, '2024-01-10', 1, 1, '2024-01-01', '2024-01-01'),
(21, 'Jardinero', 'Mantenimiento', 'Corte de césped', 'Corte de césped', 99.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(22, 'Carpintero', 'Instalación', 'Instalación de parquet', 'Instalación de parquet', 299.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(23, 'Plomero', 'Reparación', 'Reparación de baños', 'Reparación de baños', 199.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(24, 'Electricista', 'Reparación', 'Reparación de hornos', 'Reparación de hornos', 299.99, '2024-01-10', 1, 1, '2024-01-01', '2024-01-01'),
(25, 'Jardinero', 'Mantenimiento', 'Poda de árboles', 'Poda de árboles', 199.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(26, 'Carpintero', 'Instalación', 'Construcción de armarios', 'Construcción de armarios', 199.99, '2024-01-10', 1, 4, '2024-01-01', '2024-01-01'),
(27, 'Plomero', 'Desatasco', 'Desatasco de desagües', 'Desatasco de desagües', 199.99, '2024-01-10', 1, 5, '2024-01-01', '2024-01-01'),
(28, 'Electricista', 'Reparación', 'Reparación de planchas', 'Reparación de planchas', 99.99, '2024-01-10', 1, 2, '2024-01-01', '2024-01-01'),
(29, 'Jardinero', 'Mantenimiento', 'Mantenimiento de piscinas', 'Mantenimiento de piscinas', 299.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(30, 'Carpintero', 'Instalación', 'Construcción de armarios', 'Construcción de armarios', 499.99, '2024-01-10', 1, 4, '2024-01-01', '2024-01-01'),
(31, 'Plomero', 'Desatasco', 'Desatasco de desagües', 'Desatasco de desagües', 399.99, '2024-01-10', -1, NULL, '2024-01-01', '2024-01-01');


-- Cupones
INSERT INTO coupons (couponId, name, description, discount, coupon_limit, expiration, created_at, updated_at)
VALUES 
(1, 'DESCUENTO10', '10% de descuento', 10, 100, '2024-12-31', '2024-01-01', '2024-01-01'),
(2, 'BIENVENIDO15', '15% de descuento en tu primer pedido', 15, 50, '2024-12-31', '2024-01-01', '2024-01-01'),
(3, 'VERANO20', '20% de descuento en servicios de Jardinero', 20, 30, '2024-12-31', '2024-01-01', '2024-01-01'),
(4, 'CARPINTERO25', '25% de descuento en servicios de Carpintero', 25, 20, '2024-12-31', '2024-01-01', '2024-01-01'),
(5, 'PLUMBING30', '30% de descuento en servicios de Plomero', 30, 10, '2024-12-31', '2024-01-01', '2024-01-01');

-- Reseñas
INSERT INTO reviews (post_id, client_id, rate, comentary, created_at)
VALUES 
(1, 2, 5, 'Excelente servicio', '2024-01-02'),
(2, 2, 4, 'Muy buen servicio', '2024-01-02'),
(3, 4, 4, 'La reparación fue eficiente, pero el costo es elevado', '2024-01-11'),
(4, 6, 5, 'Los muebles quedaron perfectos', '2024-01-11'),
(5, 4, 3, 'El mantenimiento del jardín estuvo bien, pero podría mejorar', '2024-01-11'),
(6, 4, 5, 'La reparación de la lavadora fue rápida y efectiva', '2024-01-11'),
(7, 4, 4, 'La construcción fue buena, pero tardaron un poco más de lo previsto', '2024-01-11'),
(8, 4, 5, 'Muy buena instalación del sistema de gas', '2024-01-11'),
(9, 4, 4, 'El mantenimiento del área verde fue bueno', '2024-01-11'),
(10, 4, 5, 'La restauración de los muebles fue excelente', '2024-01-11'),
(11, 4, 4, 'La instalación eléctrica fue satisfactoria', '2024-01-11'),
(12, 4, 5, 'El aire acondicionado quedó perfecto', '2024-01-11'),
(13, 4, 5, 'El diseño del jardín quedó hermoso', '2024-01-11'),
(14, 4, 4, 'La talla de madera es de muy buena calidad', '2024-01-11'),
(15, 4, 5, 'La instalación del sanitario fue rápida y eficiente', '2024-01-11'),
(16, 4, 4, 'El televisor quedó bien reparado', '2024-01-11'),
(17, 4, 4, 'El cuidado de las plantas fue adecuado', '2024-01-11'),
(18, 4, 5, 'La reparación del tejado fue muy buena', '2024-01-11'),
(19, 4, 5, 'La instalación de la cocina quedó muy bien', '2024-01-11'),
(20, 4, 4, 'El microondas quedó bien reparado', '2024-01-11'),
(21, 4, 4, 'El corte de césped fue adecuado', '2024-01-11'),
(22, 4, 5, 'La instalación del parquet quedó perfecta', '2024-01-11'),
(23, 4, 5, 'La reparación del baño fue rápida y efectiva', '2024-01-11'),
(24, 4, 4, 'El horno quedó bien reparado', '2024-01-11'),
(25, 4, 4, 'La poda de árboles fue adecuada', '2024-01-11'),
(26, 4, 5, 'La construcción de marcos quedó perfecta', '2024-01-11'),
(27, 4, 5, 'La instalación del calentador fue rápida y efectiva', '2024-01-11'),
(28, 4, 4, 'La radio quedó bien reparada', '2024-01-11'),
(29, 4, 4, 'El mantenimiento de la piscina fue adecuado', '2024-01-11'),
(30, 4, 5, 'La construcción de armarios quedó perfecta', '2024-01-11'),
(31, 4, 5, 'El desatasco de desagües fue rápido y efectivo', '2024-01-11'),
(32, 4, 4, 'La plancha quedó bien reparada', '2024-01-11'),
(33, 4, 4, 'La instalación del sistema de riego fue adecuada', '2024-01-11'),
(34, 4, 5, 'La instalación de ventanas quedó perfecta', '2024-01-11'),
(35, 4, 5, 'La reparación del grifo fue rápida y efectiva', '2024-01-11'),
(36, 4, 4, 'La computadora quedó bien reparada', '2024-01-11'),
(37, 4, 5, 'El diseño del paisaje quedó hermoso', '2024-01-11'),
(38, 4, 5, 'La reparación de la puerta fue rápida y efectiva', '2024-01-11'),
(39, 4, 5, 'La instalación de la caldera quedó perfecta', '2024-01-11'),
(40, 4, 5, 'La reparación de la consola fue rápida y efectiva', '2024-01-11');
