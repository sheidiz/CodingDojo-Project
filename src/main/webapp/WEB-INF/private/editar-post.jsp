<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main class="py-2 flex min-h-screen items-center justify-center bg-[url('https://images.pexels.com/photos/8447778/pexels-photo-8447778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')] bg-cover bg-center dark:bg-gray-900">
    <div class="flex min-h-screen items-center justify-center">
        <form:form action="/${post.id}/update" method="post" modelAttribute="post" class="flex w-full max-w-lg flex-col gap-y-4 md:rounded-lg bg-white bg-opacity-80 p-8 shadow-lg dark:bg-gray-800 dark:bg-opacity-90">
            <div class="mb-4 text-center">
                <h1 class="text-4xl font-bold text-orange-700 dark:text-orange-700">Editar Publicación</h1>
                <p class="text-lg font-semibold dark:text-white">¡Edita tu publicación y mejora tus servicios!</p>
            </div>
            <form:hidden path="supplier" value="${post.supplier.id}" />
            <div>
                <label for="title" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Título</label>
                <form:input path="title" id="title" name="title" placeholder="Añade el título de tu servicio." class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
                <form:errors path="title" class="text-sm text-red-500" />
            </div>
            <div>
                <label for="category" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Categoría</label>
                <form:select path="category" id="category" name="category" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500">
                    <form:options items="${categoryValues}" />
                </form:select>
            </div>
            <div>
                <label for="subCategory" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Subcategoría</label>
                <form:select path="subCategory" id="subCategory" name="subCategoria" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500">
                    <form:options items="${subCategoryValues}" />
                </form:select>
            </div>
            <div class="mb-4">
                <label for="description" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Descripción</label>
                <form:textarea path="description" id="description" name="description" placeholder="Añade una descripción de tus servicios." class="mt-1 block w-full rounded-lg p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500"></form:textarea>
                <form:errors path="description" class="text-sm text-red-500" />
            </div>
            <div>
                <label for="price" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Desde $</label>
                <form:input type="number" path="price" id="price" name="price" placeholder="10.000" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
                <form:errors path="price" class="text-sm text-red-500" />
            </div>
            <div class="text-center">
                <button type="submit" class="w-fit rounded-full bg-orange-800 px-4 py-2 font-bold text-white shadow drop-shadow-md hover:bg-orange-800 focus:outline-none focus:ring-2 focus:ring-orange-800 focus:ring-opacity-50">Actualizar Publicación</button>
            </div>
        </form:form>
    </div>
</main>
