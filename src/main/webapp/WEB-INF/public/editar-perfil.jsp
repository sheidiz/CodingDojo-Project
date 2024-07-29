<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<main 	
	class="py-2 flex min-h-screen items-center justify-center bg-[url('https://images.pexels.com/photos/8447778/pexels-photo-8447778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')] bg-cover bg-center dark:bg-gray-900">
    <div class="flex min-h-screen items-center justify-center">
        <form:form action="/edicion-perfil" method="post" modelAttribute="user" enctype="multipart/form-data" class="flex w-full max-w-lg flex-col gap-y-4 md:rounded-lg bg-white bg-opacity-80 p-8 shadow-lg dark:bg-gray-800 dark:bg-opacity-90">
			 <input type="hidden" name="_method" value="put" />
            <form:hidden path="id" />
            <form:hidden path="password" />
            <form:hidden path="email"  />
			<form:hidden path="confirm" />

            <div class="mb-4 text-center">
                <h1 class="text-4xl font-bold text-orange-700 dark:text-orange-700">CheLaburo</h1>
                <p class="text-lg font-semibold dark:text-white">Edita tu perfil para actualizar tus datos</p>
            </div>
            <div>
                <label for="fullName" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Nombre Completo</label>
                <form:input path="fullName" id="fullName" placeholder="Escribe tu nombre completo" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
                <form:errors path="fullName" cssClass="text-red-500" />
            </div>
            
            <div>
                <label for="phoneNumber" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Número de Teléfono</label>
                <form:input path="phoneNumber" id="phoneNumber" placeholder="Escribe tu número de teléfono" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
                <form:errors path="phoneNumber" cssClass="text-red-500" />
            </div>
            
            <div>
                <label for="image" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Foto de Perfil</label>
				<input type="file" name="image" id="image" class="my-1 w-full rounded-full border px-2 py-1" />            
</div>
            <div class="text-center">
                <button type="submit" class="w-fit rounded-full bg-orange-800 px-4 py-2 font-bold text-white shadow drop-shadow-md hover:bg-orange-800 focus:outline-none focus:ring-2 focus:ring-orange-800 focus:ring-opacity-50">Guardar Cambios</button>
            </div>
        </form:form>
    </div>
</main>
