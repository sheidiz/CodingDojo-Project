<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main class="bg-perfil bg-cover bg-center">
	<!-- Public Profile Section -->
	<div class="mx-auto flex min-h-[80vh] max-w-screen-2xl flex-col items-start gap-y-4 p-8 md:flex-row md:gap-x-12">
		<div class="mx-auto w-full rounded-xl p-6 shadow-md bg-white dark:bg-neutral-700 dark:text-white">
			<div class="mb-6 text-center">
				<img src="<c:url value='${userInSession.profilePicture}'/>" alt="Foto Perfil" class="mx-auto my-4 size-28 rounded-full bg-slate-100 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] object-cover"/>
				<h2 class="pb-5 text-4xl font-bold">${userInSession.fullName}</h2>
				<p class="m-2 text-lg font-semibold text-gray-700 dark:text-white">
					<i class="fas fa-phone pr-1"></i> ${userInSession.phoneNumber}
				</p>
			</div>
		</div>
		<div class="mx-auto w-full rounded-xl bg-white dark:bg-neutral-700 p-6 shadow-md">
			<div class="mb-2">
				<c:if test="${rating != '0'}">
					<img src="<c:url value='/images/perfil/BigPuntuacion${rating}.png'/>" alt="Puntuación ${review.rating}" class="mx-auto md:h-20 w-fit" />
					<div class="my-4 md:mx-2 flex justify-around">
						<c:forEach items="${categories}" var="cat">
							<div class="rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
								<img src="<c:url value='/images/iconos/${cat}s.png'/>" alt="${cat}" class="size-10 md:size-20"  />
							</div>
						</c:forEach>
					</div>
				</c:if>
			</div>
			<div>
				<h3 class="mb-2 text-xl font-bold dark:text-white">Últimas reseñas:</h3>
				<c:choose>
					<c:when test="${not empty reviews}">
						<c:forEach items="${reviews}" var="review">
							<div class="mb-4 flex gap-x-2 items-center rounded-lg bg-gray-100 p-4 shadow-md  dark:bg-neutral-600">
								<div class="rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
									<img src="<c:url value='/images/iconos/${review.post.category}s.png'/>" alt="${review.post.category}" class="w-12 h-fit" />
								</div>
								<div class="text-gray-800 dark:text-white">
									<p class="font-semibold">${review.post.title}</p>
									<img src="<c:url value='/images/home/Puntuacion${review.rating}.png'/>" alt="Puntuación ${review.rating}" class="h-4 w-fit" />
									<p class="text-xs">
										<fmt:formatDate value="${review.createdAt}" pattern="yyyy-MM-dd" />
									</p>
									<p class="text-sm">${review.comentary}</p>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p class="mb-4 dark:text-white">Todavía no cuenta con reseñas.</p>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="mt-2">
				<h3 class="mb-2 text-xl font-bold dark:text-white">Publicaciones:</h3>
				<c:choose>
					<c:when test="${not empty posts}">
						<c:forEach items="${posts}" var="post">
							<div class="mb-4 flex gap-x-2 items-center rounded-lg bg-gray-100 p-4 shadow-md dark:bg-neutral-600">
								<div class="rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
									<img src="<c:url value='/images/iconos/${post.category}s.png'/>" alt="${post.category}" class="w-12 h-fit" />
								</div>
								<div class="text-gray-800 dark:text-white">
									<a href="/servicios/${post.category}s/${post.id}" class="text-gray-800 dark:text-white">${post.title}</a>
									<p class="text-sm">${post.description}</p>
									<p class="text-sm">Desde $${post.price}</p>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p class="mb-4 dark:text-white">Todavía no hay publicaciones creadas.</p>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</main>