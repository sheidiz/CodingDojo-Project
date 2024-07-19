<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main class="flex min-h-screen items-center justify-center bg-[url('https://images.pexels.com/photos/8447778/pexels-photo-8447778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')] bg-cover bg-center dark:bg-gray-900">
  <div class="flex min-h-screen items-center justify-center">
    <form class="flex w-full max-w-lg flex-col gap-y-4 rounded-lg bg-white bg-opacity-80 p-8 shadow-lg dark:bg-gray-800 dark:bg-opacity-90">
      <div class="mb-8 text-center">
        <h1 class="text-4xl font-bold text-orange-700 dark:text-orange-700">CheLaburo</h1>
        <p class="text-lg font-semibold dark:text-white">¡Creá una publicación y comenzá a ofrecer tus servicios!</p>
      </div>
      <div>
        <label for="ubicacion" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Ubicación</label>
        <input type="text" id="ubicacion" name="ubicacion" placeholder="Zonas donde trabajas" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
        <small class="text-gray-500 dark:text-gray-400">¡No olvides agregar la zona en la que trabajas!</small>
      </div>
      <div>
        <label for="categoria" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Categoría</label>
        <select id="categoria" name="categoria" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500">
          <option value="mudanzas">Mudanzas</option>
          <option value="limpieza">Limpieza</option>
          <option value="reparaciones">Reparaciones</option>
          <option value="plomeria">Pintores</option>
          <option value="electricistas">Electricistas</option>
          <option value="jardineria">Jardinería</option>
        </select>
      </div>
      <div>
        <label for="precio" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Desde</label>
        <input type="text" id="precio" name="precio" placeholder="$" class="mt-1 block w-full rounded-full p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500" />
        <small class="text-gray-500 dark:text-gray-400">Añade un estimado del valor de tus servicios</small>
      </div>
      <div class="mb-4">
        <label for="descripcion" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Descripción</label>
        <textarea id="descripcion" name="descripcion" placeholder="Añade una descripción de tus servicios." class="mt-1 block w-full rounded-lg p-2 drop-shadow-md focus:border-orange-800 focus:ring-orange-800 dark:bg-gray-700 dark:text-white dark:focus:border-orange-500 dark:focus:ring-orange-500"></textarea>
        <small class="text-gray-500 dark:text-gray-400">¡No olvides añadir una descripción!</small>
      </div>
      <div class="text-center">
        <button type="submit" class="w-fit rounded-full bg-orange-800 px-4 py-2 font-bold text-white shadow drop-shadow-md hover:bg-orange-800 focus:outline-none focus:ring-2 focus:ring-orange-800 focus:ring-opacity-50 dark:bg-orange-700 dark:hover:bg-orange-800">Publicar</button>
      </div>
    </form>
  </div>
  <button id="theme-toggle" class="fixed right-4 top-4 rounded bg-gray-200 p-2 dark:bg-gray-700 dark:text-white">Toggle Theme</button>
</main>

