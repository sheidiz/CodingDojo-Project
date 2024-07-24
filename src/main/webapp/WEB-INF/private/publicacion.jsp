<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<main class="flex min-h-screen justify-center bg-post bg-center bg-cover p-3 md:p-4">
	<section class="mx-auto mt-20 h-fit md:min-w-[650px] max-w-3xl rounded-xl bg-slate-50 p-6 dark:bg-neutral-800 text-neutral-800 md:text-lg dark:text-stone-50">
		<div class="font-league-normal just mb-2 flex flex-col gap-x-3 md:flex-row md:items-center">
			<h1 class="text-4xl font-semibold text-orange-700">${post.supplier.fullName}</h1>
			<p class="mt-2 w-fit rounded-full bg-neutral-700 px-4 py-1 font-medium text-white md:mt-0 dark:border dark:border-white">${post.category}</p>
		</div>
		<c:choose>
			<c:when test="${ rating == 'Puntuacion0' }">
				<p class="text-neutral-700">Sin reseñas</p>
			</c:when>
			<c:otherwise>
				<img src="<c:url value='/images/home/${rating}.png'/>" alt="Puntuación ${rating}" class="mb-4 h-5 w-fit" />
				<a href="/" class="text-sm text-neutral-700 underline">Ver reseñas (${fn:length(post.reviews)})</a>
			</c:otherwise>
		</c:choose>

		<p class="font-bold text-lg md:text-xl">${post.title}
			<span class="font-phrase font-normal text-sm md:text-base">(${post.subCategory})</span>
		</p>
		<p class="text-sm font-semibold">Desde $${post.price}-</p>
		<p class="font-phrase font-light md:text-lg">${post.description}</p>
		<form:form method="post" action="/servicios/order/crear" modelAttribute="order" class="mt-5 flex flex-col w-full gap-y-6">
			<form:hidden path="client" value="${userInSession.id}" />
			<form:hidden path="postOrder" value="${post.id}" />
			<form:hidden path="category" value="${post.category}" />
			<form:hidden path="statusOrder" value="0" />
			<form:hidden path="price" value="${post.price}" />
			<div>
				<label for="estimatedDate" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Fecha estimada</label>
				<form:input type="date" path="estimatedDate" class="mt-1 block w-full rounded-lg p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
				<form:errors path="estimatedDate" class="text-sm text-gray-500 dark:text-gray-400" />
			</div>
			<div>
				<label for="description" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Descripción</label>
				<form:textarea path="description" placeholder="Añade detalles que quieras sumar al pedido." class="mt-1 block w-full rounded-lg p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
				<form:errors path="description" class="text-sm text-gray-500 dark:text-gray-400" />
			</div>
			<div class="flex gap-x-4">
				<input type="submit" value="Contratar" class="ml-auto block rounded-full bg-orange-800 px-8 py-3 font-semibold text-white shadow-md hover:scale-105" />
				<a href="/servicios" class="block rounded-full bg-black px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Cancelar</a>
			</div>
		</form:form>
	</section>
</main>
