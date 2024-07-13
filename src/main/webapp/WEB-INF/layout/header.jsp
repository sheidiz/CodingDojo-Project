<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav class="bg-stone-50 dark:bg-neutral-800 shadow">
		<div class="flex flex-wrap items-center justify-between max-w-screen-xl px-4 mx-auto">
			<div class="p-5">
				<a class="text-3xl font-bold font-logo -tracking-widest text-orange-800 dark:text-slate-50" href="/">CheLaburo</a>
			</div>

			<button data-collapse-toggle="mobile-menu" type="button"
				class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
				aria-controls="mobile-menu" aria-expanded="true">
				<span class="sr-only">Abrir menu</span>
				<svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path>
				</svg>

			</button>
			<div class="items-center justify-between w-full md:flex md:w-auto" id="mobile-menu">
				<ul class="flex flex-col mt-4 md:flex-row md:space-x-8 md:mt-0 py-3 md:py-0 gap-y-2 md:gap-y-0 font-medium text-lg md:text-xl duration-500">
					<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent">
						<a href="/servicios" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Servicios</a>
					</li>
					<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent">
						<a href="/nosotros" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Nosotros</a>
					</li>
					<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent">
						<a href="/ayuda" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Ayuda</a>
					</li>
					<hr class="md:hidden ms-4 my-2 w-10 border-orange-700" />
					<c:choose>
						<c:when test="${not empty userInSession}">
							<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent md:hidden">
								<a href="/mi-perfil" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Mi Perfil</a>
							</li>
							<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent md:hidden">
								<a href="/logout" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Cerrar sesión</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent md:hidden">
								<a href="/iniciar-sesion" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Iniciar sesión</a>
							</li>
							<li class="px-4 py-2 rounded-md hover:bg-orange-700 md:hover:bg-transparent md:hidden">
								<a href="/registro" class="block text-neutral-800 hover:text-stone-50 md:dark:hover:text-orange-500 md:hover:text-orange-700">Únete</a>
							</li>
						</c:otherwise>
					</c:choose>

				</ul>
			</div>
			<div class="hidden md:block">
				<c:choose>
					<c:when test="${not empty userInSession}">
						<a href="/mi-perfil" class="me-1 rounded-full bg-orange-800 hover:bg-orange-700 duration-200 px-4 py-2 font-medium text-stone-50">Mi Perfil</a>
						<a href="/logout" class="rounded-full bg-neutral-700 px-4 py-2 font-medium text-stone-50 dark:bg-stone-50 dark:text-orange-800">Cerrar sesión</a>
					</c:when>
					<c:otherwise>
						<a href="/iniciar-sesion" class="me-1 rounded-full bg-orange-800 hover:bg-orange-700 duration-200 px-4 py-2 font-medium text-stone-50">Iniciar sesión</a>
						<a href="/registro" class="rounded-full bg-neutral-800 px-4 py-2 font-medium text-stone-50 dark:bg-stone-50 dark:text-orange-800">Únete</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
</header>
<script src="https://unpkg.com/flowbite@1.4.1/dist/flowbite.js"></script>