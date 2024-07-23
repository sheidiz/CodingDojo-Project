<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<main class="bg-red-600">
  <!-- Profile Section -->
  <div class="mx-auto flex min-h-[80vh] max-w-screen-2xl flex-col items-start gap-y-4 bg-white p-8 md:flex-row md:gap-x-12">
    <div class="mx-auto w-full rounded-xl bg-gray-100 p-6 shadow-md">
      <div class="mb-6 text-center">
        <h2 class="pb-5 text-4xl font-bold">${userInSession.fullName}</h2>
        <p class="m-2 text-gray-700">${userInSession.phoneNumber}</p>
      </div>
      <button class="mb-2 w-full rounded bg-orange-500 px-4 py-2 text-white hover:bg-orange-600">Editar Perfil</button>
      <button class="w-full rounded bg-gray-700 px-4 py-2 text-white hover:bg-gray-800">Crear Post</button>
    </div>
    <!-- Orders and Publications Section -->
    <div class="mx-auto w-full rounded-xl bg-white p-6 shadow-md">
      <!-- Orders Section -->
      <div class="mb-8">
        <h3 class="mb-4 text-xl font-bold">Órdenes Pendientes:</h3>
        <c:forEach items="${pendingOrders}" var="po">
        <div class="mb-4 flex items-center rounded-lg bg-gray-100 p-4 shadow-md">
          <img src="https://placehold.co/40x40" alt="Orden Icon" class="mr-4 w-12" />
          <div>
            <a class="text-gray-800" href="/">¡${po.client.fullName} solicitó tus servicios!</a>
          </div>
        </div>
        </c:forEach>
        <h3 class="mb-4 text-xl font-bold">Órdenes Concretadas:</h3>
        <c:forEach items="${completedOrders}" var="co">
        <div class="mb-4 flex items-center rounded-lg bg-gray-100 p-4 shadow-md">
          <img src="https://placehold.co/40x40" alt="Orden Icon" class="mr-4 w-12" />
          <div>
            <p class="text-gray-800">¡Realizaste un trabajo para ${co.client.fullName}!</p>
          </div>
          <img src="https://placehold.co/20x20" alt="Check Icon" class="ml-auto h-6 w-6" />
        </div>
        </c:forEach>
      </div>
      <!-- Publications Section -->
      <div>
        <h3 class="mb-4 text-xl font-bold">Tus Publicaciones:</h3>
        <c:forEach items="${userInSession.supplierPost}" var="post">
        <div class="mb-4 flex items-center rounded-lg bg-gray-100 p-4 shadow-md">
          <img src="https://placehold.co/40x40" alt="Servicio de Mudanza" class="mr-4 w-12" />
          <p>${post.category} - ${post.title}</p>
        </div>
        </c:forEach>
      </div>
    </div>
  </div>
</main>