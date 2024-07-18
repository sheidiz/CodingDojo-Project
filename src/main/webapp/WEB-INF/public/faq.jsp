<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<main class="flex items-center justify-center bg-stone-50 py-5 dark:bg-neutral-800">
    <div class="container mx-auto p-4">
        <!-- Bienvenida y Pasos para Registrarte -->
        <section class="mb-8">
            <h2 class="text-2xl font-semibold mb-4 text-center">Bienvenido a CheLaburo</h2>
            <p class="mb-4">En CheLaburo, conectamos a usuarios como tú con LABURANTES que pueden ayudarte con una amplia gama de servicios, desde resolver problemas eléctricos hasta facilitar tu mudanza, cuidar tu jardín o pintar tu casa. Nuestros LABURANTES están aquí para resolver tus necesidades. Para registrarte, simplemente accede a nuestra página de registro, completa tus datos personales y explora una variedad de servicios disponibles para elegir el que mejor se adapte a tus necesidades.</p>
            
            <h3 class="text-xl font-semibold mb-2">Pasos para Registrarte:</h3>
            <ol class="list-decimal ml-6 mb-4">
                <li>Accede a nuestra página de registro: Visita nuestro sitio web y haz clic en el botón <a href="#" class="text-blue-500 underline">Únete</a> para comenzar. </li>
                <li>Completa tus datos personales: Ingresa tu nombre completo, dirección de correo electrónico y crea una contraseña segura.</li>
                <li>Explora y elige tus servicios: Una vez registrado, podrás acceder a la página principal y seleccionar cualquier servicio que desees. Nuestro sistema te guiará para encontrar el LABURANTE adecuado para tus necesidades.</li>
            </ol>
        </section>
        <section>
            <h3 class="text-2xl font-semibold mb-4">Preguntas Frecuentes</h3>
            <div id="accordion">
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Puedo comprar tarjetas regalo de CheLaburo?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>En estos momentos, no disponemos de tarjetas regalo de CheLaburo para la venta. Próximamente estarán disponibles.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Qué ofrecen los LABURANTES?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Podés reservar servicios de muchas categorías distintas, como montaje de muebles, fijación a la pared, reparaciones menores del hogar y mucho más. CheLaburo te pone en contacto con contratistas independientes de tu zona para que te ayuden con los servicios.</p>
                        <p>Buscá en la página de inicio de CheLaburo para encontrar la categoría que desees.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Está CheLaburo disponible en mi ciudad?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Actualmente, CheLaburo solo está disponible en la zona de Capital Federal. Sin embargo, estamos trabajando para expandir nuestro servicio y pronto estaremos disponibles en más áreas.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Los LABURANTES pueden ver mi número de teléfono, mi correo electrónico o mi dirección?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Nunca proporcionamos a los <b>LABURANTES</b> tu número de teléfono ni tu correo electrónico. Toda la comunicación se realiza a través de la plataforma de CheLaburo. No es necesario proporcionar la información personal porque las funciones de llamada y chat en la aplicación permiten a los <b>LABURANTES</b> contactar contigo directamente desde la aplicación. Para que tu información siga siendo segura, te recomendamos que no intercambies los detalles de contacto con tu <b>LABURANTE</b>.</p>
                        <p>Hasta que el <b>LABURANTE</b> no acepte tu invitación para realizar el servicio, tampoco podrá ver tu dirección completa.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿CheLaburo ofrece servicios profesionales?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>CheLaburo es una plataforma que conecta a clientes con <b>LABURANTES</b>. Si tu servicio requiere un profesional cualificado, confirmá que el <b>LABURANTE</b> disponga de la licencia y las credenciales necesarias o busca ayuda fuera de CheLaburo.</p>
                        <p>CheLaburo no ofrece ninguna garantía respecto a la licencia, registro o acreditación profesional de los <b>LABURANTES</b>.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Qué equipo y materiales tendrá el LABURANTE?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Si necesitás algo específico para tu servicio, asegurate de incluirlo en la descripción. También deberías mandar un mensaje al <b>LABURANTE</b> tras la reserva para confirmar que tenga el equipo y materiales necesarios.</p>
                        <p>Los <b>LABURANTES</b> son autónomos, así que el equipo y materiales que tengan variarán de un <b>LABURANTE</b> a otro.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Qué debo hacer después de reservar un servicio?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Tras reservar un servicio, deberías comentar tu servicio detalladamente, hacer cualquier pregunta que tengas y asegurarte de que todo quede claro.</p>
                        <p>Una vez comentado el servicio, podés confirmar la fecha y la hora en que tendrá lugar para que el <b>LABURANTE</b> pueda programarlo.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Tengo que estar en casa cuando se haga mi servicio?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Tenés la responsabilidad de supervisar y dirigir el trabajo del <b>LABURANTE</b>. CheLaburo no controla, dirige ni supervisa el trabajo de los <b>LABURANTES</b>, ya que son autónomos independientes contratados por los clientes. Si no vas a estar en casa, asegurate de dar al <b>LABURANTE</b> todas las instrucciones que pueda necesitar para completar tu servicio correctamente.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Por qué no debo intercambiar información de contacto con mi LABURANTE?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>No proporcionamos información como tu número de teléfono ni tu correo electrónico.</p>
                        <p>Para garantizar tu privacidad, te pedimos que no des tu información personal a los <b>LABURANTES</b> y que utilices la plataforma de CheLaburo como única forma de comunicación.</p>
                    </div>
                </div>
                <div class="accordion-item mb-2">
                    <div class="accordion-header bg-gray-100 p-4 cursor-pointer flex justify-between items-center" onclick="toggleAccordion(this)">
                        <h3 class="font-semibold">¿Qué debo hacer si el LABURANTE ha cancelado el servicio?</h3>
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="accordion-content p-4 bg-white hidden">
                        <p>Sentimos que el <b>LABURANTE</b> no haya cumplido con su compromiso y haya cancelado el servicio. Si aún necesitás completarlo, podés volver a reservarlo y elegir a otro <b>LABURANTE</b>.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>

<script>
    function toggleAccordion(element) {
        const allContents = document.querySelectorAll('.accordion-content');
        const allIcons = document.querySelectorAll('.accordion-header i');

        allContents.forEach(content => {
            if (content !== element.nextElementSibling) {
                content.style.display = 'none';
            }
        });

        allIcons.forEach(icon => {
            if (icon !== element.querySelector('i')) {
                icon.classList.remove('fa-minus');
                icon.classList.add('fa-plus');
            }
        });

        const content = element.nextElementSibling;
        const icon = element.querySelector('i');

        if (content.style.display === 'block') {
            content.style.display = 'none';
            icon.classList.remove('fa-minus');
            icon.classList.add('fa-plus');
        } else {
            content.style.display = 'block';
            icon.classList.remove('fa-plus');
            icon.classList.add('fa-minus');
        }
    }

    document.getElementById('menu-button').onclick = function () {
        const menu = document.getElementById('mobile-menu');
        menu.classList.toggle('hidden');
    }
</script>
