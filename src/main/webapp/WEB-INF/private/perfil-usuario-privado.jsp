<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<main class="bg-perfil bg-cover bg-center">
	<!-- Profile Section -->
	<div
		class="mx-auto flex min-h-[80vh] max-w-screen-2xl flex-col items-start gap-y-4 p-8 md:flex-row md:gap-x-12">
		<div class="mx-auto w-full rounded-xl p-6 shadow-md bg-white">
			<div class="mb-6 text-center">
				<h2 class="pb-5 text-4xl font-bold">${userInSession.fullName}</h2>
				<p class="m-2 text-gray-700">${userInSession.phoneNumber}</p>
			</div>
			<div class="flex flex-col items-center">
				<a href="/"
					class="mb-2 w-fit rounded-full bg-orange-500 px-10 py-2 text-white hover:bg-orange-700">Editar
					Perfil</a>
			</div>
		</div>
		<!-- Orders and Publications Section -->
		<div class="mx-auto w-full rounded-xl bg-white p-6 shadow-md">
			<!-- Orders Section -->
			<div class="mb-8">
				<h3 class="mb-2 text-xl font-bold">Órdenes Pendientes:</h3>
				<c:choose>
					<c:when test="${not empty pendingOrders}">
						<c:forEach items="${pendingOrders}" var="po">
							<div
								class="mb-4 flex gap-x-2 items-center rounded-lg bg-gray-100 p-4 shadow-md">
								<div
									class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
									<img src="<c:url value='/images/iconos/${po.category}s.png'/>"
										alt="${po.category}" />
								</div>
								<div>
									<p class="text-gray-800 block">¡Solicitaste los
										servicios de ${po.postOrder.supplier.fullName}!</p>
									<p class="text-gray-800 text-sm">${po.postOrder.title}</p>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p class="mb-4">Por el momento no se hay ordenes pendientes.</p>
					</c:otherwise>
				</c:choose>
				<h3 class="mb-2 text-xl font-bold">Órdenes Concretadas:</h3>
				<c:choose>
					<c:when test="${not empty completedOrders}">
						<c:forEach items="${completedOrders}" var="co">
							<div
								class="mb-4 flex gap-x-2 items-center rounded-lg bg-gray-100 p-4 shadow-md">
								<div
									class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
									<img src="<c:url value='/images/iconos/${co.category}s.png'/>"
										alt="${co.category}" />
								</div>
								<div>
									<a class="text-gray-800 block" href="/ordenes/${co.id}">¡Solicitaste los
										servicios de ${co.postOrder.supplier.fullName}!</a>
									<p class="text-gray-800 text-sm">${co.postOrder.title}</p>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p class="mb-4">Por el momento no se concretaron ordenes.</p>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- Publications Section -->
			<div>
				<h3 class="mb-2 text-xl font-bold">Tus Reseñas:</h3>
				<c:choose>
					<c:when test="${not empty reviews}">
						<c:forEach items="${reviews}" var="review">
							<div
								class="mb-4 flex gap-x-2 items-center rounded-lg bg-gray-100 p-4 shadow-md">
								<div
									class="size-16 rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
									<img
										src="<c:url value='/images/iconos/${review.post.category}s.png'/>"
										alt="${review.post.category}" />
								</div>
								<div>
									<p class="text-gray-800">${review.post.title}</p>
									<p class="text-gray-800 text-sm">${review.comentary}</p>
									<p class="text-gray-800 text-xs"> <fmt:formatDate value="${review.createdAt}" pattern="yyyy-MM-dd" /></p>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p class="mb-4">Todavía no hay reseñas creadas.</p>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</main>