<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CheLaburo - Inicio de sesión</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="/css/styles.css" rel="stylesheet">
<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
</head>
<body>
<main class="flex min-h-screen justify-center bg-orange-950 p-3 md:p-4 dark:bg-red-950">
  <section class="m-auto flex max-w-5xl flex-col items-center justify-center gap-y-6 rounded-xl bg-slate-50 px-4 py-6 dark:bg-neutral-800">
    <a href="/" class="font-logo w-fit rounded-full bg-orange-800 px-8 py-2 text-5xl font-semibold -tracking-widest text-slate-50 shadow-xl md:text-6xl">CheLaburo</a>
    <p class="text-center text-2xl font-medium md:mx-auto md:w-3/4 dark:text-slate-50">
      Iniciá sesión <br />
      ¡y conectá con los servicios en tu zona!
    </p>
    <div class="w-full items-center justify-center gap-5 rounded-xl bg-orange-800 p-4 md:flex dark:bg-transparent">
      <div class="w-full">
        <p class="pb-2 text-center text-2xl font-medium text-slate-50 md:pb-5 md:text-4xl">¡Hola de nuevo!</p>
        <form class="my-5 flex flex-col gap-y-2 rounded-md bg-slate-50 px-6 py-10 dark:bg-orange-800">
          <div>
            <label>Email</label>
            <input type="email" id="email" placeholder="juan.perez@email.com" class="my-1 w-full rounded-full border px-2 py-1" />
          </div>
          <div>
            <label>Contraseña</label>
            <input type="password" id="password" placeholder="*******" class="my-1 w-full rounded-full border px-2 py-1" />
          </div>
          <p class="block w-fit rounded bg-white px-2 text-sm font-semibold text-red-700">${errorLogin}</p>
          <input type="submit" value="Iniciar sesión" class="cursor-pointer my-1 rounded-full bg-zinc-900 py-1 text-slate-300 hover:text-slate-50" />
          <p class="mt-1 text-sm">¿Todavía no tenés una cuenta? <a class="font-semibold underline" href="/registro">Registrate</a></p>
        </form>
      </div>
      <div class="hidden w-full md:block">
        <img src="https://placehold.co/460x620" class="rounded-xl shadow-xl" />
      </div>
    </div>
  </section>
</main>

</body>
</html>
