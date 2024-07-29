<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<main class="bg-perfil bg-cover bg-center">
    <!-- Profile Section -->
    <div class="mx-auto flex min-h-[80vh] max-w-screen-2xl flex-col items-start gap-y-4 p-8 md:flex-row md:gap-x-12">
        <div class="mx-auto w-full rounded-xl p-6 shadow-md dark:bg-neutral-700 bg-white dark:text-white">
            <div class="mb-6 text-center">
                <img src="<c:url value='${userInSession.profilePicture}'/>" alt="Foto de perfil" class="mx-auto my-4 size-28 rounded-full bg-slate-100 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] object-cover" />
                <h2 class="pb-5 text-4xl font-bold">${userInSession.fullName}</h2>
                <p class="m-2 text-lg font-semibold text-gray-700 dark:text-white">
					<i class="fas fa-phone pr-1"></i> ${userInSession.phoneNumber}
				</p>
            </div>
            <div class="flex flex-col items-center">
                <a href="/editar-perfil" class="mb-2 w-fit rounded-full bg-orange-500 px-10 py-2 text-white hover:bg-orange-700">Editar Perfil</a>
                <a href="/nueva-publicacion" class="w-fit rounded-full bg-gray-700 px-10 py-2 text-white hover:bg-gray-800 dark:bg-slate-100 dark:text-gray-800 hover:dark:bg-slate-200">Crear Publicación</a>
            </div>
        </div>
        <!-- Orders and Publications Section -->
        <div class="mx-auto w-full rounded-xl bg-white dark:bg-neutral-700 p-6 shadow-md">
            <div class="mb-8">
                <!-- Orders Section -->
                <h3 class="mb-2 text-xl font-bold dark:text-white">Órdenes Pendientes:</h3>
                <c:choose>
                    <c:when test="${not empty pendingOrders}">
                        <c:forEach items="${pendingOrders}" var="po">
                            <a href="/ordenes/${po.id}" class="block mb-4 flex items-center gap-x-4 rounded-lg bg-gray-100 p-4 shadow-md dark:bg-neutral-600">
                                <div class="rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
									<img src="<c:url value='/images/iconos/${po.category}s.png'/>" alt="${po.category}" class="w-12 h-fit" />
								</div>
                                <div class="flex-grow flex items-center justify-between">
                                	<div class="flex-col">
	                                    <p class="text-gray-800 dark:text-white">¡${po.client.fullName} solicitó tus servicios!</p>
	                                    <p class="text-gray-800 dark:text-white text-sm">${po.postOrder.title}</p>
	                                    <p class="text-gray-800 dark:text-white text-xs"><fmt:formatDate value="${po.estimatedDate}" pattern="dd-MM-yyyy"/></p>
	                                </div>
                                    <form action="/completeOrder" method="post">
                                        <input type="hidden" name="orderId" value="${po.id}" />
                                        <button type="submit"
                                            class="ml-4 rounded-3xl bg-gray-200 hover:bg-green-300 p-3">
                                            <i class="fas fa-check" style="color: green; font-size: 24px;"></i>
                                        </button>
                                    </form>
                                </div>
                            </a>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p class="mb-4 dark:text-white">Por el momento no se hay ordenes pendientes.</p>
                    </c:otherwise>
                </c:choose>
                <h3 class="mb-2 text-xl font-bold dark:text-white">Órdenes Concretadas:</h3>
                <c:choose>
                    <c:when test="${not empty completedOrders}">
                        <c:forEach items="${completedOrders}" var="co">
                            <a href="/ordenes/${co.id}" class="mb-4 flex items-center gap-x-4 rounded-lg bg-gray-100 p-4 shadow-md dark:bg-neutral-600">
                                <div class="rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
                                    <img src="<c:url value='/images/iconos/${co.category}s.png'/>" alt="${co.category}" class="w-12 h-12" />
                                </div>
                                <div class="flex-grow flex items-center justify-between">
                                    <div class="flex-col">
										<p class="text-gray-800 dark:text-white">¡Realizaste un trabajo para ${co.client.fullName}!</p>
										<p class="text-gray-800 dark:text-white text-sm">${co.postOrder.title}</p>
	                                    <p class="text-gray-800 dark:text-white text-xs"><fmt:formatDate value="${co.estimatedDate}" pattern="dd-MM-yyyy"/></p>
	                                </div>
                                    
                                    <p class="ml-4 rounded-3xl bg-green-300 p-3">
                                        <i class="fas fa-check" style="color: green; font-size: 24px;"></i>
                                    </p>
                                </div>
                            </a>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p class="mb-4 dark:text-white">Por el momento no se concretaron ordenes.</p>
                    </c:otherwise>
                </c:choose>
            </div>
            <!-- Publications Section -->
            <div>
                <h3 class="mb-2 text-xl font-bold dark:text-white">Tus Publicaciones:</h3>
                <c:choose>
				    <c:when test="${not empty posts}">
				        <c:forEach items="${posts}" var="post">
				            <div class="mb-4 flex items-center gap-x-4 rounded-lg bg-gray-100 p-4 shadow-md dark:bg-neutral-600">
				                <div class="rounded-full bg-orange-700 p-1 drop-shadow-[0_4px_4px_rgba(0,0,0,0.25)] md:p-2">
				                    <img src="<c:url value='/images/iconos/${post.category}s.png'/>" alt="${post.category}" class="w-12 h-12" />
				                </div>
				                <div class="flex-grow">
				                    <p class="text-gray-800 dark:text-white">${post.title}</p>
				                    <p class="text-gray-800 text-xs dark:text-white">${post.description}</p>
				                </div>
				                <a href="/${post.id}/edit" class="ml-auto w-fit rounded-full bg-gray-700 px-10 py-2 text-white hover:bg-gray-800 dark:bg-slate-100 dark:text-gray-800 hover:dark:bg-slate-200">Editar</a>
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