<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<main class="flex min-h-screen justify-center bg-post bg-center bg-cover p-3 md:p-4">
  <section class="mx-auto mt-20 h-fit max-w-3xl rounded-xl bg-slate-50 p-6 dark:bg-neutral-800">
    <div class="font-league-normal just mb-2 flex flex-col gap-x-3 md:flex-row md:items-center">
      <h1 class="text-4xl font-semibold text-orange-700">Fletes Carlitos</h1>
      <p class="mt-2 w-fit rounded-full bg-neutral-700 px-4 py-1 font-medium text-white md:mt-0 dark:border dark:border-white">Mudanzas</p>
    </div>
    <p class="mb-4">
    	<img src="<c:url value='/images/home/Puntuacion3.png'/>" alt="Puntuacion 3" class="h-5 w-fit" />
    </p>
    <p class="font-phrase font-light text-neutral-800 md:text-lg dark:text-stone-50">Quia enim ullam et neque necessitatibus. Error suscipit deserunt ab. Nam nam non totam quia. Nulla neque quis laudantium. Aspernatur aliquid est vero eaque assumenda consequatur. Quas reprehenderit cupiditate temporibus. Et dicta deserunt possimus. Quis occaecati aperiam possimus delectus cupiditate id sint.</p>
    <div class="mt-5 flex w-full gap-x-6">
      <a href="/servicio/contratar/idUser/idPublicacion" class="ml-auto block rounded-full bg-orange-800 px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Contratar</a>
      <a href="/servicios/mudanzas" class="block rounded-full bg-black px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Cancelar</a>
    </div>
  </section>
</main>
