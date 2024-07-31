<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<main class="bg-stone-50 py-5 dark:bg-neutral-800">
	<ul class="mx-auto flex max-w-screen-lg flex-wrap justify-center gap-4 lg:gap-10">
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Fleteros">
				<img src="<c:url value='/images/home/Fleteros.png'/>" alt="Fleteros" />
			</a>
		</li>
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Jardineros">
				<img src="<c:url value='/images/home/Jardineros.png'/>" alt="Jardinería" />
			</a>
		</li>
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Electricistas">
				<img src="<c:url value='/images/home/Electricistas.png'/>" alt="Electricistas" />
			</a>
		</li>
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Gasistas">
				<img src="<c:url value='/images/home/Gasista.png'/>" alt="Gasistas" />
			</a>
		</li>
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Plomeros">
				<img src="<c:url value='/images/home/Plomero.png'/>" alt="Plomeros" />
			</a>
		</li>
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Carpinteros">
				<img src="<c:url value='/images/home/Carpinteros.png'/>" alt="Carpinteros" />
			</a>
		</li>
		<li class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-20 md:p-2 hover:scale-110">
			<a href="/servicios/Otros">
				<img src="<c:url value='/images/home/Otro.png'/>" alt="Otros" />
			</a>
		</li>
	</ul>
	<form action="/servicios/Busqueda" class="my-2 flex w-full py-4">
		<input type="text" placeholder="¡Encontrá lo que buscás acá!" id="search" name="search"
			class="mx-auto w-4/5 rounded-3xl bg-white px-6 py-2 text-center outline-none focus:outline-neutral-700 md:w-96 md:py-3 dark:bg-neutral-700 dark:text-white shadow-lg" />
	</form>
	
	<div class="pb-6 flex flex-col items-center">
		<img src="<c:url value='/images/home/Hammer-LightMode.png'/>" alt="Logo"
			class="dark:hidden h-10 w-fit md:h-14" />
		<img src="<c:url value='/images/home/Hammer-DarkMode.png'/>" alt="Logo"
			class="hidden dark:block h-10 w-fit md:h-14" />
		<h1 class="text-4xl font-logo font-semibold -tracking-widest text-neutral-700 drop-shadow-[0_4px_4px_rgba(117,117,117,1)] md:text-6xl dark:text-white dark:drop-shadow-[0_4px_4px_rgba(0,0,0,1)]">CheLaburo</h1>
	</div>

	<div id="slider" class="w-full mb-3 py-5 bg-gradient-to-b from-white to-stone-200 dark:from-neutral-700 dark:to-neutral-700">
		<h2 class="pb-2 text-neutral-800 dark:text-white text-2xl text-center font-phrase">Siempre a la mano.</h2>
		<div class="swiper mySwiper mx-auto w-4/5">
			<div class="swiper-wrapper p-2">
				<div class="swiper-slide h-full w-[300px] md:w-[500px]">
					<img src="<c:url value='/images/home/1.jpg'/>" class="block w-full rounded-3xl drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)]" />
				</div>
				<div class="swiper-slide h-full w-[300px] md:w-[500px]">
					<img src="<c:url value='/images/home/2.jpg'/>" class="block w-full rounded-3xl drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)]" />
				</div>
				<div class="swiper-slide h-full w-[300px] md:w-[500px]">
					<img src="<c:url value='/images/home/3.jpg'/>" class="block w-full rounded-3xl drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)]" />
				</div>
				<div class="swiper-slide h-full w-[300px] md:w-[500px]">
					<img src="<c:url value='/images/home/4.jpg'/>" class="block w-full rounded-3xl drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)]" />
				</div>
				<div class="swiper-slide h-full w-[300px] md:w-[500px]">
					<img src="<c:url value='/images/home/5.jpg'/>" class="block w-full rounded-3xl drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)]" />
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>

	<div id="reviews" class="mx-3 my-20 max-w-5xl rounded-2xl bg-white p-10 shadow-lg md:mx-auto dark:bg-neutral-700">
	  <h3 class="pb-3 md:pb-5 font-semibold text-lg dark:text-white">Reseñas más recientes</h3>
	  <div class="my-2 flex flex-col justify-center gap-6 md:flex-row">
	    <div class="single-review flex flex-1 flex-col justify-between gap-2 rounded-md border bg-white p-4">
	      <div class="flex flex-col gap-2">
	        <img src="<c:url value='/images/home/Puntuacion5.png'/>" alt="Puntuacion 5" class="h-5 w-fit" />
	        <p class="font-semibold">Electricista Pablo M.: Arreglo de último momento</p>
	        <p class="text-sm font-medium">Agradezco haberme topado con un profesional como Pablo, con rápidez soluciono todas mis inquietudes.</p>
	      </div>
	      <div>
	        <p class="text-sm font-medium text-neutral-700">Tamara Gimenez</p>
	        <p class="text-xs text-neutral-600">10/07/2024</p>
	      </div>
	    </div>
	    <div class="single-review flex flex-1 flex-col justify-between gap-2 rounded-md border bg-white p-4">
	      <div class="flex flex-col gap-2">
	        <img src="<c:url value='/images/home/Puntuacion3.png'/>" alt="Puntuacion 3" class="h-5 w-fit" />
	        <p class="font-semibold">Servicios Omar: Mudanzas</p>
	        <p class="text-sm font-medium">Estoy satisfecho con el servicio, pero le bajo 2 estrellas porque llego un rato despues de la hora acordada.</p>
	      </div>
	      <div>
	        <p class="text-sm font-medium text-neutral-700">Marcos Rivera</p>
	        <p class="text-xs text-neutral-600">08/07/2024</p>
	      </div>
	    </div>
	    <div class="single-review flex flex-1 flex-col justify-between gap-2 rounded-md border bg-white p-4">
	      <div class="flex flex-col gap-2">
	        <img src="<c:url value='/images/home/Puntuacion4.png'/>" alt="Puntuacion 4" class="h-5 w-fit" />
	        <p class="font-semibold">CleanNow Nuñez: Limpieza del hogar</p>
	        <p class="text-sm font-medium">Excelente servicio de limpieza, eficiente y amigable.</p>
	      </div>
	      <div>
	        <p class="text-sm font-medium text-neutral-700">Daiana Martinez</p>
	        <p class="text-xs text-neutral-600">07/07/2024</p>
	      </div>
	    </div>
	  </div>
	</div>

	<script>
		var swiper = new Swiper(".mySwiper", {
			effect : "coverflow",
			grabCursor : true,
			centeredSlides : true,
			slidesPerView : "auto",
			autoplay : true,
			loop : true,
			coverflowEffect : {
				rotate : 0,
				stretch : 0,
				depth : 300,
				modifier : 1,
				slideShadows : true,
			},
			pagination : {
				el : ".swiper-pagination",
			},
		});
	</script>
</main>
