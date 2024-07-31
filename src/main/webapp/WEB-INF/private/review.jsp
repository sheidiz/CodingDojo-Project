<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<main class="min-h-screen justify-center bg-review bg-center bg-cover p-3 md:p-4">
  <section class="mx-auto mt-20 h-fit max-w-3xl rounded-xl bg-slate-50 p-6 dark:bg-neutral-800">
    <div class="font-league-normal just mb-2 flex flex-col gap-x-3 md:flex-row md:items-center">
      <h1 class="text-4xl font-semibold text-orange-700">${post.supplier.fullName}</h1>
      <p class="mt-2 w-fit rounded-full bg-neutral-700 px-4 py-1 font-medium text-white md:mt-0 dark:border dark:border-white">${post.category}</p>
    </div>
    <p class="font-phrase font-light text-neutral-800 md:text-lg dark:text-stone-50">${order.description}</p>
    <form:form method="post" action="/ordenes/${order.id}/${post.id}" modelAttribute="review" class="mt-4 flex flex-col items-start gap-y-2">
    <h2 class="text-3xl font-semibold text-neutral-800 dark:text-stone-50">Dejar una reseña</h2>
    <form:hidden path="client" value="${userInSession.id}" />
	<form:hidden path="post" value="${post.id}" />
    <label class="mb-[-15px] align-middle text-lg font-medium text-neutral-800 dark:text-slate-50">Puntuación:</label>
    <div class="rating">
        <form:radiobutton path="rating" value="5" id="star5" />
        <label for="star5"></label>
        <form:radiobutton path="rating" value="4" id="star4" />
        <label for="star4"></label>
        <form:radiobutton path="rating" value="3" id="star3" />
        <label for="star3"></label>
        <form:radiobutton path="rating" value="2" id="star2" />
        <label for="star2"></label>
        <form:radiobutton path="rating" value="1" id="star1" />
        <label for="star1"></label>
    </div>
    
    <label class="align-middle text-lg font-medium text-neutral-800 dark:text-slate-50">Comentario:</label>
    <form:textarea path="comentary" class="p-2 min-h-24 w-full rounded-lg border border-neutral-800 bg-slate-50 text-neutral-800 dark:border-white dark:bg-neutral-800 dark:text-stone-50"></form:textarea>
    
    <div class="mt-5 flex w-full gap-x-6">
        <button type="submit" class="block rounded-full bg-orange-800 px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Enviar</button>
        <a href="/mi-perfil" class="block rounded-full bg-black px-8 py-3 font-semibold text-white shadow-md hover:scale-105">Cancelar</a>
    </div>
</form:form>
  </section>
</main>