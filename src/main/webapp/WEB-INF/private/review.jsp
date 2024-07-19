<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<main class="min-h-screen justify-center bg-review bg-center bg-cover p-3 md:p-4">
  <section class="mx-auto mt-20 h-fit max-w-3xl rounded-xl bg-slate-50 p-6 dark:bg-neutral-800">
    <div class="font-league-normal just mb-2 flex flex-col gap-x-3 md:flex-row md:items-center">
      <h1 class="text-4xl font-semibold text-orange-700">Fletes Carlitos</h1>
      <p class="mt-2 w-fit rounded-full bg-neutral-700 px-4 py-1 font-medium text-white md:mt-0 dark:border dark:border-white">Mudanzas</p>
    </div>
    <p class="mb-4">
    	<img src="<c:url value='/images/home/Puntuacion3.png'/>" alt="Puntuacion 3" class="h-5 w-fit" />
    </p>
    <p class="font-phrase font-light text-neutral-800 md:text-lg dark:text-stone-50">Quia enim ullam et neque necessitatibus. Error suscipit deserunt ab. Nam nam non totam quia. Nulla neque quis laudantium. Aspernatur aliquid est vero eaque assumenda consequatur. Quas reprehenderit cupiditate temporibus. Et dicta deserunt possimus. Quis occaecati aperiam possimus delectus cupiditate id sint.</p>
    <form class="mt-4 flex flex-col items-start gap-y-2">
      <h2 class="text-3xl font-semibold text-neutral-800 dark:text-stone-50">Dejar una reseña</h2>
      <label class="mb-[-15px] align-middle text-lg font-medium text-white">Puntuación:</label>
      <div class="rating">
        <input value="5" name="rating" id="star5" type="radio" />
        <label for="star5"></label>
        <input value="4" name="rating" id="star4" type="radio" />
        <label for="star4"></label>
        <input value="3" name="rating" id="star3" type="radio" />
        <label for="star3"></label>
        <input value="2" name="rating" id="star2" type="radio" />
        <label for="star2"></label>
        <input value="1" name="rating" id="star1" type="radio" />
        <label for="star1"></label>
      </div>
      <label class="align-middle text-lg font-medium text-white">Comentario:</label>
      <textarea class="p-2 min-h-24 w-full rounded-lg border border-neutral-800 bg-slate-50 text-neutral-800 dark:border-white dark:bg-neutral-800 dark:text-stone-50"></textarea>
      <div class="mt-5 flex w-full gap-x-6">
        <a href="/servicio/contratar/idUser/idPublicacion" class="block rounded-full bg-orange-800 px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Enviar</a>
        <a href="/mi-perfil" class="block rounded-full bg-black px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Cancelar</a>
      </div>
    </form>
  </section>
</main>
