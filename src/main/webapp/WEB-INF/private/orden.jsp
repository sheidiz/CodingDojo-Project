<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main class="min-h-screen justify-center bg-review bg-center bg-cover p-3 md:p-4">
  <section class="mx-auto mt-20 h-fit max-w-3xl rounded-xl bg-slate-50 p-6 dark:bg-neutral-800">
    <div class="font-league-normal just mb-2 flex flex-col gap-x-3 md:flex-row md:items-center">
      <h1 class="text-4xl font-semibold text-orange-700">${post.supplier.fullName}</h1>
      <p class="mt-2 w-fit rounded-full bg-neutral-700 px-4 py-1 font-medium text-white md:mt-0 dark:border dark:border-white">${post.category}</p>
    </div>
    <p class="mb-4">
    <img src="<c:url value='/images/home/Puntuacion3.png'/>" alt="Puntuacion 3" class="h-5 w-fit" />
    </p>
    <p class="text-sm dark:text-white mb-1">Creación de orden: <fmt:formatDate value="${order.createdAt}" pattern="yyyy-MM-dd" /></p>
    <p class="text-sm dark:text-white mb-2">Fecha estimada: <fmt:formatDate value="${order.estimatedDate}" pattern="yyyy-MM-dd" /></p>
    <p class="font-phrase font-light text-neutral-800 md:text-lg dark:text-stone-50">${post.description}</p>
    <p class="font-phrase font-light text-neutral-800 md:text-lg dark:text-stone-50">${order.description}</p>
    <p class="mt-2 dark:text-white">Para más información contactate al siguiente e-mail: <a href="mailto:${post.supplier.email}" class="font-semibold">${post.supplier.email}</a></p>
  </section>
</main>