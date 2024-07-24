<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav id="myNav" class="relative bg-stone-50 dark:bg-neutral-800 shadow">
		<div class="mx-auto flex max-w-screen-xl flex-wrap items-center justify-between px-4">
			<div class="z-10 p-5">
				<a class="font-logo text-3xl font-bold -tracking-widest text-orange-800 dark:text-slate-50 select-none" href="/">CheLaburo ${pendingReviews}</a>
			</div>

			<button id="menu-button" type="button"
				class="ml-1 inline-flex items-center rounded-lg p-2 text-sm text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 md:hidden dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
				aria-expanded="false">
				<span class="sr-only">Abrir menu</span>
				<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
						clip-rule="evenodd"></path>
                </svg>
			</button>
			<div id="mobile-menu" class="w-full z-10 hidden absolute md:static top-16 left-0 md:flex md:w-auto bg-stone-50 dark:bg-neutral-800 shadow md:shadow-none">
				<ul class="mt-4 flex flex-col gap-y-2 py-3 text-lg font-medium duration-500 md:mt-0 md:flex-row md:gap-y-0 md:space-x-8 md:py-0 md:text-xl">
					<li class="relative">
						<button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar" aria-expanded="false"
							class="flex items-center justify-between w-full rounded-md border-0 outline-0 px-4 py-2 hover:bg-orange-700 md:hover:bg-transparent block text-neutral-800 hover:text-stone-50 md:hover:text-orange-700 dark:text-stone-100 md:dark:hover:text-orange-500">
							Servicios
							<svg class="w-2.5 h-2.5 ml-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
						      <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4" />
						    </svg>
						</button>
						<!-- Dropdown menu -->
						<div id="dropdownNavbar" class="hidden static md:absolute z-10 font-normal bg-white rounded-lg shadow w-full md:w-40 dark:bg-neutral-700 mt-2">
						    <ul class="py-2 text-sm text-neutral-800 dark:text-stone-100">
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Fleteros" class="block">Fleteros</a>
						        </li>
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Jardineros" class="block">Jardineros</a>
						        </li>
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Electricistas" class="block">Electricistas</a>
						        </li>
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Gasistas" class="block">Gasistas</a>
						        </li>
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Plomeros" class="block">Plomeros</a>
						        </li>
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Carpinteros" class="block">Carpinteros</a>
						        </li>
						        <li class="rounded-md px-4 py-2 hover:bg-orange-700 hover:text-slate-50">
						            <a href="/servicios/Otros" class="block">Otros</a>
						        </li>
						    </ul>
						</div>
					</li>
					<li class="rounded-md px-4 py-2 hover:bg-orange-700 md:hover:bg-transparent">
						<a href="/nosotros" class="menu-link block text-neutral-800 hover:text-stone-50 md:hover:text-orange-700 dark:text-stone-100 md:dark:hover:text-orange-500">Nosotros</a>
					</li>
					<li class="rounded-md px-4 py-2 hover:bg-orange-700 md:hover:bg-transparent">
						<a href="/ayuda" class="menu-link block text-neutral-800 hover:text-stone-50 md:hover:text-orange-700 dark:text-stone-100 md:dark:hover:text-orange-500">Ayuda</a>
					</li>
					<hr class="my-2 ms-4 w-10 border-orange-700 md:hidden" />
					<c:choose>
						<c:when test="${not empty userInSession}">
							<li class="rounded-md px-4 py-2 hover:bg-orange-700 md:hidden md:hover:bg-transparent">
								<a href="/perfil" class="menu-link block text-neutral-800 dark:text-stone-100 hover:text-stone-50 md:hover:text-orange-700 md:dark:hover:text-orange-500">Mi Perfil</a>
							</li>
							<li class="rounded-md px-4 py-2 hover:bg-orange-700 md:hidden md:hover:bg-transparent">
								<a href="/logout" class="menu-link block text-neutral-800 dark:text-stone-100 hover:text-stone-50 md:hover:text-orange-700 md:dark:hover:text-orange-500">Cerrar sesión</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="rounded-md px-4 py-2 hover:bg-orange-700 md:hidden md:hover:bg-transparent">
								<a href="/iniciar-sesion" class="menu-link block text-neutral-800 dark:text-stone-100 hover:text-stone-50 md:hover:text-orange-700 md:dark:hover:text-orange-500">Iniciar sesión</a>
							</li>
							<li class="rounded-md px-4 py-2 hover:bg-orange-700 md:hidden md:hover:bg-transparent">
								<a href="/registro" class="menu-link block text-neutral-800 dark:text-stone-100 hover:text-stone-50 md:hover:text-orange-700 md:dark:hover:text-orange-500">Únete</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<div class="hidden md:block">
				<c:choose>
					<c:when test="${not empty userInSession}">
						<a href="/perfil" class="me-1 rounded-full bg-orange-800 px-4 py-2 font-medium text-stone-50 duration-200 hover:bg-orange-700">Mi Perfil</a>
						<a href="/logout" class="rounded-full bg-neutral-700 px-4 py-2 font-medium text-stone-50 dark:bg-stone-200 dark:hover:bg-stone-50 dark:text-orange-800">Cerrar sesión</a>
					</c:when>
					<c:otherwise>
						<a href="/iniciar-sesion" class="me-1 rounded-full bg-orange-800 px-4 py-2 font-medium text-stone-50 duration-200 hover:bg-orange-700">Iniciar sesión</a>
						<a href="/registro" class="rounded-full bg-neutral-800 px-4 py-2 font-medium text-stone-50 dark:bg-stone-200 dark:hover:bg-stone-50 dark:text-orange-800">Únete</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
</header>
<script src="/js/menu.js"></script>