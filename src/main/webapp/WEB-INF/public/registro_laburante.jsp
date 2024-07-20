<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CheLaburo - Registro</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="/css/styles.css" rel="stylesheet">
<link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
<link rel="manifest" href="/favicon/site.webmanifest">
<link rel="mask-icon" href="/favicon/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
</head>
<body>
<main class="flex min-h-screen justify-center bg-wood p-3 md:p-4">
  <section class="m-auto flex max-w-5xl flex-col items-center justify-center gap-y-6 rounded-xl bg-slate-50 px-4 py-6 dark:bg-neutral-800">
    <a href="/" class="font-logo w-fit rounded-full bg-orange-800 px-8 pt-2 text-5xl font-semibold -tracking-widest text-slate-50 shadow-xl md:text-6xl">CheLaburo</a>
    <p class="text-center text-2xl font-medium md:mx-auto md:w-3/4 dark:text-slate-50">
      Registrate <br />
      ¡y comenza a conectar con tus clientes!
    </p>
    <div class="w-full items-center justify-center gap-5 rounded-xl bg-orange-800 p-4 md:flex dark:bg-transparent">
      <div class="w-full">
        <p class="pb-2 text-center text-2xl font-medium text-slate-50 md:pb-5 md:text-4xl">¡Bienvenido/a!</p>
        <form:form action="/register" method="POST" modelAttribute="newUser" class="my-2 flex flex-col gap-y-2 rounded-md bg-slate-50 px-6 py-6 dark:bg-orange-800">
		<input type="hidden" name="supplier" value="true" />
          <div>
            <form:label path="fullName" >Nombre completo</form:label>
            <form:input  path="fullName" type="text" id="name" placeholder="Juan Perez" class="my-1 w-full rounded-full border px-2 py-1" />
            <form:errors path="fullName" class="mt-1 block w-fit rounded bg-white px-2 text-sm font-semibold text-red-700"/>
          </div>
          <div>
            <form:label path="phoneNumber" >Teléfono</form:label>
            <form:input path="phoneNumber" type="tel" id="phone" placeholder="011 1111 1111" class="my-1 w-full rounded-full border px-2 py-1" />
            <form:errors path="phoneNumber" class="mt-1 block w-fit rounded bg-white px-2 text-sm font-semibold text-red-700"/>
          </div>
          <div>
            <form:label path="email" >Email</form:label>
            <form:input path="email"  type="email" id="email" placeholder="juan.perez@email.com" class="my-1 w-full rounded-full border px-2 py-1" />
            <form:errors path="email" class="mt-1 block w-fit rounded bg-white px-2 text-sm font-semibold text-red-700"/>
          </div>
          <div>
            <form:label path="password" >Contraseña</form:label>
            <form:input path="password" type="password" id="password" placeholder="*******" class="my-1 w-full rounded-full border px-2 py-1" />
            <form:errors path="password" class="mt-1 block w-fit rounded bg-white px-2 text-sm font-semibold text-red-700"/>
          </div>
          <div>
            <form:label path="confirm" >Repetir contraseña</form:label>
            <form:input path="confirm" type="password" id="password" placeholder="*******" class="my-1 w-full rounded-full border px-2 py-1" />
            <form:errors path="confirm" class="mt-1 block w-fit rounded bg-white px-2 text-sm font-semibold text-red-700"/>
          </div>
          <input type="submit" value="Registrarme" class="cursor-pointer my-1 rounded-full bg-zinc-900 py-1 text-slate-300 hover:text-slate-50" />
          <p class="mt-1 text-sm dark:text-stone-50">¿Ya tenés una cuenta? <a class="font-semibold underline" href="/iniciar-sesion">Inicia sesión</a></p>
          <p class="mt-1 text-sm dark:text-stone-50"> ¿Quieres registrarte como usuario? <a class="font-semibold underline" href="/registro">Haz click aquí</a></p>          
        </form:form >
      </div>
      <div class="hidden w-full md:block">
        <img src="<c:url value='/images/registro/registro.jpg'/>" class="rounded-xl shadow-xl max-h-[80vh]" />
      </div>
    </div>
  </section>
</main>

</body>
</html>
