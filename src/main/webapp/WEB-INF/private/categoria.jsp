<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<main class="bg-stone-50 pb-5 dark:bg-neutral-800">
	<section class="flex flex-col items-center bg-${category} bg-center bg-cover py-12 md:py-28">
		<div class="size-20 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-28 md:p-2">
			<img src="<c:url value='/images/iconos/${category}.png'/>" alt="${category}" />
		</div>
		<form action="/servicios/${category}" method="get" class="my-4 flex w-full py-4">
			<input type="text" placeholder="¡Encontrá lo que buscás acá!" id="search" name="search" value="${search}" class="mx-auto w-4/5 rounded-3xl bg-white px-6 py-2 text-center shadow-lg outline-none focus:outline-neutral-700 md:w-96 md:py-3 dark:bg-neutral-700 dark:text-white" />
		</form>
	</section>
	<section class="max-w-6xl mx-4 my-10 flex flex-col items-center gap-2 lg:mx-auto">
		<h1 class="font-phrase text-3xl text-neutral-800 dark:text-stone-50">Los mejores en ${pageTitle}</h1>
		<form id="filterForm" action="/servicios/${category}" method="get" class="my-2">
			<input type="hidden" id="search" name="search" value="${search}" />
			<select name="filter" class="rounded-3xl bg-white px-2 py-1 text-center shadow-lg outline-none focus:outline-neutral-700 md:py-2 dark:bg-neutral-700 dark:text-white text-center" onchange="submitForm()">
				<option value="MasAntiguos" class="text-center" <c:if test="${filter == 'MasAntiguos' || empty filter}">selected</c:if>>Más Antiguos</option>
				<option value="MasRecientes" class="text-center" <c:if test="${filter == 'MasRecientes'}">selected</c:if>>Más Recientes</option>
				<option value="MejorCalificacion" class="text-center" <c:if test="${filter == 'MejorCalificacion'}">selected</c:if>>Mejor Calificados</option>
			</select>
		</form>
		<c:choose>
			<c:when test="${not empty posts}">
				<div class="grid grid-cols-1 gap-8 py-10 md:grid-cols-2 lg:grid-cols-3 lg:gap-10">
					<c:forEach items="${posts}" var="post">
						<div class="single-review min-w-80 flex flex-1 flex-col justify-between gap-2 rounded-md border bg-white p-4 shadow-lg dark:shadow-white/10">
							<div class="flex flex-col gap-2">
								<div class="flex items-center gap-x-4 pb-2 border-b">
									<div class="size-10 rounded-full bg-slate-100 p-1 drop-shadow-[0_2px_2px_rgba(0,0,0,0.25)] overflow-hidden">
										<img src="<c:url value='${post.supplier.profilePicture}'/>" alt="Fleteros" />
									</div>
									<h3 class="text-2xl font-semibold text-orange-700">${post.supplier.fullName}</h3>
								</div>
								<p class="text-lg font-medium">${post.title}</p>
								<p class="text-sm font-semibold">Desde $${post.price}-</p>
								<c:choose>
									<c:when test="${ postRatings[post.id] == 0}">
										<p class="text-sm text-neutral-700">Sin reseñas</p>
									</c:when>
									<c:when test="${ not empty postRatings[post.id]}">
										<img src="<c:url value='/images/home/Puntuacion${postRatings[post.id]}.png'/>" alt="Puntuacion ${postRatings[post.id]}" class="h-5 w-fit" />
										<a href="/publicaciones/${post.id}" class="text-sm text-neutral-700 underline">Ver reseñas (${fn:length(post.reviews)})</a>
									</c:when>
								</c:choose>
								<p class="text-sm font-normal">${post.description}</p>
								<a href="/servicios/${category}/${post.id}" class="ml-auto block w-fit rounded-full bg-orange-800 px-6 py-2 font-semibold text-stone-50 hover:scale-110">Contratar</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>
			<c:otherwise>
				<p class="my-5 w-full text-center text-lg font-semibold text-neutral-800 dark:text-stone-50">No se encontraron publicaciones.</p>
			</c:otherwise>
		</c:choose>

	</section>
	<script>
    function submitForm() {
        document.getElementById('filterForm').submit();
    }
</script>
</main>
