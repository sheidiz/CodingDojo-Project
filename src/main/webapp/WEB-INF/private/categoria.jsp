<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<main class="bg-stone-50 pb-5 dark:bg-neutral-800">
	<section class="flex flex-col items-center bg-${category} bg-center bg-cover py-12 md:py-28">
		<div class="size-20 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:size-28 md:p-2">
			<img src="<c:url value='/images/home/${category}.png'/>" alt="${category}" />
		</div>
		<form action="/servicios" class="my-4 flex w-full py-4">
			<input type="text" placeholder="¡Encontrá lo que buscás acá!" id="search" name="search"
				class="mx-auto w-4/5 rounded-3xl bg-white px-6 py-2 text-center shadow-lg outline-none focus:outline-neutral-700 md:w-96 md:py-3 dark:bg-neutral-700 dark:text-white" />
		</form>
	</section>
	<section class="max-w-6xl mx-4 my-10 flex flex-col items-center gap-2 lg:mx-auto">
		<h1 class="font-phrase text-3xl text-neutral-800 dark:text-stone-50">Los mejores en ${pageTitle}</h1>
		<div class="grid grid-cols-1 gap-8 py-10 md:grid-cols-2 lg:grid-cols-3 lg:gap-10">
			<c:forEach items="${posts}" var="post">
				<div class="single-review flex flex-1 flex-col justify-between gap-2 rounded-md border bg-white p-4 shadow-lg dark:shadow-white/10">
					<div class="flex flex-col gap-2">

						<h3 class="text-2xl font-semibold text-orange-700 pb-2 border-b">${post.supplier.fullName}</h3>
						<p class="text-lg font-medium">${post.title}</p>
						<p class="text-sm font-semibold">Desde ${post.price}-</p>

						<c:choose>
							<c:when test="${ postRatings[post.id] == 0}">
								<p class="text-sm text-neutral-700">Sin reseñas</p>
							</c:when>
							<c:when test="${ not empty postRatings[post.id]}">
								<img src="<c:url value='/images/home/Puntuacion${postRatings[post.id]}.png'/>" alt="Puntuacion ${postRatings[post.id]}" class="h-5 w-fit" />
								<a href="/" class="text-sm text-neutral-700 underline">Ver reseñas (${fn:length(post.reviews)})</a>
							</c:when>
						</c:choose>
					
						<p class="text-sm font-normal">${post.description}</p>
						<a href="/servicios/${category}/${post.id}" class="ml-auto block w-fit rounded-full bg-orange-800 px-6 py-2 font-semibold text-stone-50 hover:scale-110">Contratar</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</main>
