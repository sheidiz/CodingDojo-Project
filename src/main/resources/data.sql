-- Usuarios  Todas las pass son 123456 por propositos de testing
INSERT INTO users (full_name, email, phone_number, password, profile_picture, is_supplier, created_at, updated_at)
VALUES 
('Juan Electronica', 'juan.perez@example.com', '1234567890', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 1, '2024-01-01', '2024-01-01'),
('María López', 'maria.lopez@example.com', '0987654321', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 0, '2024-01-01', '2024-01-01'),
('Carlos Plomero', 'carlos.garcia@example.com', '1244567890', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 1, '2024-01-01', '2024-01-01'),
('Ana Torres', 'ana.torres@example.com', '3456789012', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 0, '2024-01-01', '2024-01-01'),
('Luis Martínez Carpintero', 'luis.martinez@example.com', '4567890123', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 1, '2024-01-01', '2024-01-01'),
('Elena Gómez', 'elena.gomez@example.com', '5678901234', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 0, '2024-01-01', '2024-01-01'),
('Miguel Mantenimiento', 'miguel.santos@example.com', '6789012345', '$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO',"/images/users/default-profile.png", 1, '2024-01-01', '2024-01-01');

-- Publicaciones
INSERT INTO posts (supplier_id, category, sub_category, title, description, status_post, price, is_highlighted, created_at, updated_at)
VALUES 
(1, 'Electricista', 'Reparación', 'Arreglo de TV', 'Servicio profesional de reparación de televisores', true, 999.99, true, '2024-01-01', '2024-01-01'),
(1, 'Gasista', 'Instalación', 'Tuberías y sistemas de gas natural', 'Instalación y mantenimiento de tuberías y sistemas de gas natural', true, 299.99, false, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparación', 'Reparación de tuberías', 'Reparación profesional de tuberías de agua', true, 199.99, false, '2024-01-01', '2024-01-01'),
(3, 'Fletero', 'Instalación', 'Mudanza', 'Ofrecemos servicios de mudanza seguros y eficientes, cuidando cada detalle desde el embalaje hasta el transporte, asegurando que tus pertenencias lleguen a su destino en perfecto estado.', true, 599.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricación', 'Fabricación de muebles', 'Construcción y diseño de muebles a medida', true, 499.99, false, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Mantenimiento de jardines', 'Servicio completo de mantenimiento de jardines', true, 299.99, true, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de lavadoras', 'Reparación de lavadoras de todas las marcas', true, 399.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricación', 'Construcción de casas', 'Diseño y construcción de casas de madera', true, 999.99, true, '2024-01-01', '2024-01-01'),
(3, 'Gasista', 'Instalación', 'Instalación de sistemas de gas', 'Instalación segura de sistemas de gas', true, 299.99, false, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Mantenimiento de áreas verdes', 'Cuidado y mantenimiento de áreas verdes', true, 199.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Reparación', 'Restauración de muebles', 'Reparación y restauración de muebles antiguos', true, 299.99, true, '2024-01-01', '2024-01-01'),
(3, 'Electricista', 'Instalación', 'Instalación eléctrica', 'Instalación de sistemas eléctricos', true, 199.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de aire acondicionado', 'Servicio de reparación de aire acondicionado', true, 599.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Diseño de jardines', 'Diseño y planificación de jardines', true, 499.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricación', 'Talla de madera', 'Talla y escultura en madera', true, 399.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Instalación', 'Instalación de sanitarios', 'Instalación de sistemas sanitarios completos', true, 299.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de televisores', 'Reparación de televisores de todas las marcas', true, 199.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Cuidado de plantas', 'Cuidado y mantenimiento de plantas', true, 99.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Reparación', 'Reparación de tejados', 'Reparación de tejados de madera', true, 499.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Instalación', 'Instalación de cocina', 'Instalación de sistemas de cocina', true, 399.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de microondas', 'Reparación de microondas de todas las marcas', true, 199.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Corte de césped', 'Corte y mantenimiento de césped', true, 99.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Instalación', 'Instalación de parquet', 'Instalación de pisos de parquet', true, 299.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparación', 'Reparación de baños', 'Reparación de baños y tuberías', true, 199.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de hornos', 'Reparación de hornos eléctricos y a gas', true, 299.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Poda de árboles', 'Servicio de poda y cuidado de árboles', true, 199.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricación', 'Construcción de marcos', 'Fabricación y diseño de marcos a medida', true, 199.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Instalación', 'Instalación de calentadores', 'Instalación de calentadores de agua', true, 399.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de radios', 'Reparación de radios antiguas y modernas', true, 99.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Mantenimiento', 'Mantenimiento de piscinas', 'Cuidado y mantenimiento de piscinas', true, 299.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Fabricación', 'Construcción de armarios', 'Diseño y construcción de armarios a medida', true, 499.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparación', 'Desatasco de desagües', 'Desatasco y limpieza de desagües', true, 199.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de planchas', 'Reparación de planchas eléctricas', true, 99.99, true, '2024-01-01', '2024-01-01'),
(7, 'Jardinero', 'Instalación', 'Instalación de sistemas de riego', 'Instalación y mantenimiento de sistemas de riego', true, 299.99, false, '2024-01-01', '2024-01-01'),
(5, 'Carpintero', 'Instalación', 'Instalación de ventanas', 'Instalación de ventanas de madera y aluminio', true, 299.99, true, '2024-01-01', '2024-01-01'),
(3, 'Plomero', 'Reparación', 'Reparación de grifos', 'Reparación de grifos y llaves de paso', true, 99.99, false, '2024-01-01', '2024-01-01'),
(1, 'Electricista', 'Reparación', 'Reparación de computadoras', 'Reparación de computadoras y laptops', true, 199.99, true, '2024-01-01', '2024-01-01');

-- Cupones [errores]
INSERT INTO coupons (name, description, discount, coupon_limit, expiration, created_at, updated_at)
VALUES 
('DESCUENTO10', '10% de descuento', 10, 100, '2024-12-31', '2024-01-01', '2024-01-01'),
('BIENVENIDO15', '15% de descuento en tu primer pedido', 15, 50, '2024-12-31', '2024-01-01', '2024-01-01'),
('VERANO20', '20% de descuento en servicios de Jardinero', 20, 30, '2024-12-31', '2024-01-01', '2024-01-01'),
('CARPINTERO25', '25% de descuento en servicios de Carpintero', 25, 20, '2024-12-31', '2024-01-01', '2024-01-01'),
('PLUMBING30', '30% de descuento en servicios de Plomero', 30, 10, '2024-12-31', '2024-01-01', '2024-01-01');

-- Pedidos
INSERT INTO orders (post_id, user_id, category, description, price, estimated_date, status_order, coupon_id, created_at, updated_at)
VALUES 
(1, 2, 'Electricista','Arreglo de TV', 999.99, '2024-01-05', 0, NULL, '2024-01-01', '2024-01-01'),
(2, 2, 'Gasista',  'Arreglo de sistemas de gas natural', 29.99, '2024-01-05', 0, NULL, '2024-01-01', '2024-01-01'),
(3, 2, 'Plomero',  'Reparación de tuberías', 199.99, '2024-01-10', 0, 5, '2024-01-01', '2024-01-01'),
(4, 2, 'Carpintero', 'Fabricación de muebles', 499.99, '2024-01-10', 0, 4, '2024-01-01', '2024-01-01'),
(5, 2, 'Jardinero', 'Mantenimiento de jardines', 299.99, '2024-01-10', 0, 3, '2024-01-01', '2024-01-01'),
(6, 2, 'Electricista', 'Reparación de lavadoras', 399.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(7, 4, 'Carpintero', 'Construcción de casas', 999.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(8, 4, 'Gasista', 'Instalación de sistemas de gas', 299.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(9, 4, 'Jardinero', 'Mantenimiento de áreas verdes', 199.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(10, 4, 'Carpintero', 'Restauración de muebles', 299.99, '2024-01-10', -1, NULL, '2024-01-01', '2024-01-01'),
(11, 4, 'Electricista', 'Instalación eléctrica', 199.99, '2024-01-10', 1, 1, '2024-01-01', '2024-01-01'),
(12, 4, 'Electricista', 'Reparación de aire acondicionado', 599.99, '2024-01-10', 1, 1, '2024-01-01', '2024-01-01'),
(13, 4, 'Jardinero', 'Diseño de jardines', 499.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(14, 4, 'Carpintero', 'Talla de madera', 399.99, '2024-01-10', -1, NULL, '2024-01-01', '2024-01-01'),
(15, 6, 'Plomero', 'Instalación de sanitarios', 299.99, '2024-01-10', 1, 5, '2024-01-01', '2024-01-01'),
(16, 6, 'Electricista', 'Reparación de televisores', 199.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(17, 6, 'Jardinero', 'Cuidado de plantas', 99.99, '2024-01-10', 0, NULL, '2024-01-01', '2024-01-01'),
(18, 6, 'Carpintero', 'Reparación de tejados', 499.99, '2024-01-10', 1, 4, '2024-01-01', '2024-01-01');

-- Reseñas
-- Reseñas de órdenes
INSERT INTO reviews (post_id, client_id, rating, comentary, created_at)
VALUES 
(1, 2, 5, 'Excelente trabajo. La reparación de la computadora fue rápida y efectiva.', '2024-01-02'),
(2, 2, 4, 'Buen servicio, aunque el tiempo de entrega fue un poco largo.', '2024-01-02'),
(3, 4, 4, 'La reparación fue satisfactoria, pero el costo fue un poco alto.', '2024-01-10'),
(4, 4, 5, 'Excelente trabajo en el mobiliario. Quedó como nuevo.', '2024-01-10'),
(5, 4, 3, 'El mantenimiento del jardín fue bueno, pero faltaron algunos detalles.', '2024-01-10'),
(6, 4, 5, 'La reparación de la lavadora fue muy rápida y efectiva.', '2024-01-10'),
(7, 4, 4, 'La construcción fue buena, aunque se retrasaron un poco.', '2024-01-10'),
(8, 4, 5, 'Instalación del sistema de gas perfecta. Muy profesional.', '2024-01-10'),
(9, 4, 4, 'El mantenimiento del área verde estuvo bien, aunque hubo algunos retrasos.', '2024-01-10'),
(10, 6, 5, 'La reparación del tejado fue excelente, sin problemas.', '2024-01-11'),
(11, 4, 3, 'La instalación eléctrica fue aceptable, pero se podría mejorar.', '2024-01-11'),
(12, 4, 4, 'La reparación del aire acondicionado fue buena.', '2024-01-11'),
(13, 6, 4, 'El diseño de jardines fue satisfactorio, aunque con algunos detalles pendientes.', '2024-01-11'),
(14, 6, 5, 'Excelente precisión en la talla de madera. Muy satisfecho.', '2024-01-11'),
(15, 6, 4, 'La instalación de sanitarios estuvo bien, aunque tardó un poco más de lo esperado.', '2024-01-11'),
(16, 6, 3, 'La reparación del televisor podría haber sido mejor.', '2024-01-11'),
(17, 6, 5, 'El cuidado de plantas fue excelente. Muy buen servicio.', '2024-01-11'),
(18, 6, 4, 'Buena reparación del tejado, aunque se podría mejorar el tiempo de respuesta.', '2024-01-11');

