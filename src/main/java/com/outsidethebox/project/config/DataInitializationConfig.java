package com.outsidethebox.project.config;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;

import com.outsidethebox.project.models.Category;
import com.outsidethebox.project.models.Coupon;
import com.outsidethebox.project.models.Order;
import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.models.Review;
import com.outsidethebox.project.models.SubCategory;
import com.outsidethebox.project.models.User;
import com.outsidethebox.project.repositories.CouponRepository;
import com.outsidethebox.project.repositories.OrderRepository;
import com.outsidethebox.project.repositories.PostRepository;
import com.outsidethebox.project.repositories.ReviewRepository;
import com.outsidethebox.project.repositories.UserRepository;

import jakarta.validation.Validator;

@Configuration
public class DataInitializationConfig implements CommandLineRunner {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private CouponRepository couponRepository;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private ReviewRepository reviewRepository;
	
	private final Validator validator;
	
	public DataInitializationConfig(Validator validator) {
		this.validator = validator;
	}

	public void run(String... args) throws Exception {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		if (userRepository.count() == 0) {
			List<User> users = List.of(
					new User("Juan Electronica", "juan.perez@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", true, dateFormat.parse("2023-12-10")),
					new User("María López", "maria.lopez@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", false, dateFormat.parse("2023-12-10")),
					new User("Carlos Plomero", "carlos.garcia@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", true, dateFormat.parse("2023-12-10")),
					new User("Ana Torres", "ana.torres@example.com", "1244567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", false, dateFormat.parse("2023-12-31")),
					new User("Luis Martínez Carpintero", "luis.martinez@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", true, dateFormat.parse("2023-12-10")),
					new User("Elena Gómez", "elena.gomez@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", false, dateFormat.parse("2023-12-10")),
					new User("Miguel Mantenimiento", "miguel.santos@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", true, dateFormat.parse("2023-12-10")),
					new User("Miranda Servicios", "miranda.servicios@example.com", "1234567890", "$2a$10$EVIrVICokuNQ4Ls6iwzlweH0aaRcd4RqeIP1omisFiz6EfOi2lwMO", "/images/users/default-profile.png", true, dateFormat.parse("2023-12-10"))
			);
			userRepository.saveAll(users);
			
			List<Post> posts = List.of(
					new Post(userRepository.findById(1L).get(), Category.Electricista, SubCategory.Reparación, "Arreglo de TV", "Servicio profesional de reparación de televisores", true, 999.99, true, dateFormat.parse("2024-01-01")),
					new Post(userRepository.findById(1L).get(), Category.Gasista, SubCategory.Instalación, "Tuberías y sistemas de gas natural", "Instalación y mantenimiento de tuberías y sistemas de gas natural", true, 299.99, false, dateFormat.parse("2024-01-01")),
					new Post(userRepository.findById(3L).get(), Category.Plomero, SubCategory.Reparación, "Reparación de tuberías", "Reparación profesional de tuberías de agua", true, 199.99, false, dateFormat.parse("2024-01-01")),
					new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Fabricación, "Fabricación de muebles", "Construcción y diseño de muebles a medida", true, 499.99, false, dateFormat.parse("2024-01-02")),
		            new Post(userRepository.findById(7L).get(), Category.Jardinero, SubCategory.Mantenimiento, "Mantenimiento de jardines", "Servicio completo de mantenimiento de jardines", true, 299.99, true, dateFormat.parse("2024-01-02")),
		            new Post(userRepository.findById(1L).get(), Category.Electricista, SubCategory.Reparación, "Reparación de lavadoras", "Reparación de lavadoras de todas las marcas", true, 399.99, false, dateFormat.parse("2024-01-03")),
		            new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Fabricación, "Construcción de casas", "Diseño y construcción de casas de madera", true, 999.99, true, dateFormat.parse("2024-01-03")),
		            new Post(userRepository.findById(3L).get(), Category.Gasista, SubCategory.Instalación, "Instalación de sistemas de gas", "Instalación segura de sistemas de gas", true, 299.99, false, dateFormat.parse("2024-01-04")),
		            new Post(userRepository.findById(7L).get(), Category.Jardinero, SubCategory.Mantenimiento, "Mantenimiento de áreas verdes", "Cuidado y mantenimiento de áreas verdes", true, 199.99, false, dateFormat.parse("2024-01-04")),
		            new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Reparación, "Restauración de muebles", "Reparación y restauración de muebles antiguos", true, 299.99, true, dateFormat.parse("2024-01-05")),
		            new Post(userRepository.findById(3L).get(), Category.Electricista, SubCategory.Instalación, "Instalación eléctrica", "Instalación de sistemas eléctricos", true, 199.99, false, dateFormat.parse("2024-01-05")),
		            new Post(userRepository.findById(1L).get(), Category.Electricista, SubCategory.Reparación, "Reparación de aire acondicionado", "Servicio de reparación de aire acondicionado", true, 599.99, true, dateFormat.parse("2024-01-06")),
		            new Post(userRepository.findById(7L).get(), Category.Jardinero, SubCategory.Mantenimiento, "Diseño de jardines", "Diseño y planificación de jardines", true, 499.99, false, dateFormat.parse("2024-01-07")),
		            new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Fabricación, "Talla de madera", "Talla y escultura en madera", true, 399.99, true, dateFormat.parse("2024-01-07")),
		            new Post(userRepository.findById(3L).get(), Category.Plomero, SubCategory.Instalación, "Instalación de sanitarios", "Instalación de sistemas sanitarios completos", true, 299.99, false, dateFormat.parse("2024-01-08")),
		            new Post(userRepository.findById(1L).get(), Category.Electricista, SubCategory.Reparación, "Reparación de televisores", "Reparación de televisores de todas las marcas", true, 199.99, true, dateFormat.parse("2024-01-09")),
		            new Post(userRepository.findById(7L).get(), Category.Jardinero, SubCategory.Mantenimiento, "Cuidado de plantas", "Cuidado y mantenimiento de plantas", true, 99.99, false, dateFormat.parse("2024-01-10")),
		            new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Reparación, "Reparación de tejados", "Reparación de tejados de madera", true, 499.99, true, dateFormat.parse("2024-01-10")),
		            new Post(userRepository.findById(3L).get(), Category.Plomero, SubCategory.Instalación, "Instalación de cocina", "Instalación de sistemas de cocina", true, 399.99, false, dateFormat.parse("2024-01-10")),
		            new Post(userRepository.findById(1L).get(), Category.Electricista, SubCategory.Reparación, "Reparación de microondas", "Reparación de microondas de todas las marcas", true, 199.99, true, dateFormat.parse("2024-01-11")),
		            new Post(userRepository.findById(7L).get(), Category.Jardinero, SubCategory.Mantenimiento, "Corte de césped", "Corte y mantenimiento de césped", true, 99.99, false, dateFormat.parse("2024-01-11")),
		            new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Instalación, "Instalación de parquet", "Instalación de pisos de parquet", true, 299.99, true, dateFormat.parse("2024-01-11")),
		            new Post(userRepository.findById(3L).get(), Category.Plomero, SubCategory.Reparación, "Reparación de baños", "Reparación de baños y tuberías", true, 199.99, false, dateFormat.parse("2024-02-12")),
		            new Post(userRepository.findById(1L).get(), Category.Electricista, SubCategory.Reparación, "Reparación de hornos", "Reparación de hornos eléctricos y a gas", true, 299.99, true, dateFormat.parse("2024-02-13")),
		            new Post(userRepository.findById(7L).get(), Category.Jardinero, SubCategory.Mantenimiento, "Poda de árboles", "Servicio de poda y cuidado de árboles", true, 199.99, false, dateFormat.parse("2024-02-13")),
		            new Post(userRepository.findById(5L).get(), Category.Carpintero, SubCategory.Reparación, "Reparación de sillas", "Reparación y restauración de sillas", true, 149.99, true, dateFormat.parse("2024-02-13")),
		            new Post(userRepository.findById(8L).get(), Category.Fletero, SubCategory.Instalación, "Mudanza", "Ofrecemos servicios de mudanza seguros y eficientes, cuidando cada detalle desde el embalaje hasta el transporte, asegurando que tus pertenencias lleguen a su destino en perfecto estado.", true, 599.99, false, dateFormat.parse("2024-01-01"))
		    );
			postRepository.saveAll(posts);
			
			List<Coupon> coupons = List.of(
					new Coupon("DESCUENTO10", "10% de descuento", 10L, 100.00, dateFormat.parse("2024-12-31")),
					new Coupon("BIENVENIDO15", "15% de descuento en tu primer pedido", 15L, 50.00, dateFormat.parse("2024-12-31")),
					new Coupon("VERANO20", "20% de descuento en servicios de Jardinero", 20L, 30.00, dateFormat.parse("2024-12-31")),
					new Coupon("CARPINTERO25", "25% de descuento en servicios de Carpintero", 25L, 20.00, dateFormat.parse("2024-12-31")),
					new Coupon("PLUMBING30", "30% de descuento en servicios de Plomero", 30L, 10.00, dateFormat.parse("2024-12-31"))
			);
			couponRepository.saveAll(coupons);
			
			List<Order> orders = List.of(
				    new Order(postRepository.findById(1L).get(), userRepository.findById(2L).get(), Category.Electricista, "Arreglo de TV", 999.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(2L).get(), userRepository.findById(2L).get(), Category.Gasista, "Arreglo de sistemas de gas natural", 29.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(3L).get(), userRepository.findById(2L).get(), Category.Plomero, "Reparación de tuberías", 199.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(4L).get(), userRepository.findById(2L).get(), Category.Carpintero, "Fabricación de muebles", 499.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(5L).get(), userRepository.findById(2L).get(), Category.Jardinero, "Mantenimiento de jardines", 299.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(6L).get(), userRepository.findById(2L).get(), Category.Electricista, "Reparación de lavadoras", 399.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(7L).get(), userRepository.findById(4L).get(), Category.Carpintero, "Construcción de casas", 999.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(8L).get(), userRepository.findById(4L).get(), Category.Gasista, "Instalación de sistemas de gas", 299.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(9L).get(), userRepository.findById(4L).get(), Category.Jardinero, "Mantenimiento de áreas verdes", 199.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(10L).get(), userRepository.findById(4L).get(), Category.Carpintero, "Restauración de muebles", 299.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(11L).get(), userRepository.findById(4L).get(), Category.Electricista, "Instalación eléctrica", 199.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(12L).get(), userRepository.findById(4L).get(), Category.Electricista, "Reparación de aire acondicionado", 599.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(13L).get(), userRepository.findById(4L).get(), Category.Jardinero, "Diseño de jardines", 499.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(14L).get(), userRepository.findById(4L).get(), Category.Carpintero, "Talla de madera", 399.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(15L).get(), userRepository.findById(6L).get(), Category.Plomero, "Instalación de sanitarios", 299.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(16L).get(), userRepository.findById(6L).get(), Category.Electricista, "Reparación de televisores", 199.99, "1", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(17L).get(), userRepository.findById(6L).get(), Category.Jardinero, "Cuidado de plantas", 99.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26")),
				    new Order(postRepository.findById(18L).get(), userRepository.findById(6L).get(), Category.Carpintero, "Reparación de tejados", 499.99, "0", dateFormat.parse("2024-07-27"), dateFormat.parse("2024-07-26"))
			);
	        orderRepository.saveAll(orders);
	        
	        List<Review> reviews = List.of(
	        		new Review(postRepository.findById(1L).get(), userRepository.findById(2L).get(), 5, "Excelente trabajo. La reparación de la computadora fue rápida y efectiva.", dateFormat.parse("2024-01-02")),
	        	    new Review(postRepository.findById(2L).get(), userRepository.findById(2L).get(), 4, "Buen servicio, aunque el tiempo de entrega fue un poco largo.", dateFormat.parse("2024-01-02")),
	        	    new Review(postRepository.findById(3L).get(), userRepository.findById(4L).get(), 4, "La reparación fue satisfactoria, pero el costo fue un poco alto.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(4L).get(), userRepository.findById(4L).get(), 5, "Excelente trabajo en el mobiliario. Quedó como nuevo.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(5L).get(), userRepository.findById(4L).get(), 3, "El mantenimiento del jardín fue bueno, pero faltaron algunos detalles.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(6L).get(), userRepository.findById(4L).get(), 5, "La reparación de la lavadora fue muy rápida y efectiva.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(7L).get(), userRepository.findById(4L).get(), 4, "La construcción fue buena, aunque se retrasaron un poco.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(8L).get(), userRepository.findById(4L).get(), 5, "Instalación del sistema de gas perfecta. Muy profesional.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(9L).get(), userRepository.findById(4L).get(), 4, "El mantenimiento del área verde estuvo bien, aunque hubo algunos retrasos.", dateFormat.parse("2024-01-10")),
	        	    new Review(postRepository.findById(18L).get(), userRepository.findById(6L).get(), 5, "La reparación del tejado fue excelente, sin problemas.", dateFormat.parse("2024-01-11"))
	        );
	        reviewRepository.saveAll(reviews);
		}

	}
	
}
