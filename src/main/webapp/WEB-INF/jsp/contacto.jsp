<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto - VaultPay</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'neutral-gray-600': '#4a5568',
                        'neutral-gray-700': '#2d3748',
                    }
                }
            }
        }
    </script>
    <style>
        .logo-container img:first-child {
            filter: brightness(0) saturate(100%) invert(15%) sepia(97%) saturate(1233%) hue-rotate(199deg) brightness(95%) contrast(96%);
        }
        .logo-container img:last-child {
            filter: brightness(0) saturate(100%) invert(15%) sepia(97%) saturate(1233%) hue-rotate(199deg) brightness(95%) contrast(96%);
        }
        .logo-container:hover img {
            filter: brightness(0) saturate(100%) invert(25%) sepia(97%) saturate(1233%) hue-rotate(199deg) brightness(95%) contrast(96%);
        }
    </style>
</head>
<body class="bg-[#f7fafc] min-h-screen">
    <!-- Navigation -->
    <nav class="bg-white shadow-sm sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <!-- Logo -->
                <a href="/web/inicio" class="logo-container flex items-center gap-2">
                    <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572483/VaultPay_Logo_solo_rlok0h.png"
                        alt="VaultPay Logo" class="h-8 w-auto transition-transform duration-300 hover:scale-105">
                    <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572484/VaultPay_n1yuov.png"
                        alt="VaultPay" class="h-6 w-auto transition-transform duration-300 hover:scale-105">
                </a>

                <!-- Mobile menu button -->
                <div class="md:hidden">
                    <button onclick="toggleMenu()" class="text-neutral-gray-700 hover:text-[#1a4b8c]">
                        <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                        </svg>
                    </button>
                </div>

                <!-- Desktop Navigation -->
                <div class="hidden md:flex items-center space-x-8">
                    <a href="/web/inicio" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Inicio</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/web/servicios" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Servicios</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/web/nosotros" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Nosotros</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/web/contacto" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Contacto</span>
                        <span class="absolute bottom-0 left-1/2 w-4/5 h-0.5 bg-[#1a4b8c] -translate-x-1/2"></span>
                    </a>
                    <a href="/web/login" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Iniciar Sesión</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/registro" class="bg-[#1a4b8c] text-white px-6 py-2 rounded-lg hover:bg-[#2c6bc2] transition-all duration-300 hover:-translate-y-0.5 hover:shadow-md">
                        Registrarse
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobile-menu" class="hidden md:hidden bg-white shadow-lg absolute top-16 left-0 right-0 z-40">
            <div class="px-4 py-2 space-y-2">
                <a href="/web/inicio" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Inicio</a>
                <a href="/web/servicios" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Servicios</a>
                <a href="/web/nosotros" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Nosotros</a>
                <a href="/web/contacto" class="block text-center py-3 text-[#1a4b8c] font-semibold">Contacto</a>
                <a href="/web/login" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Iniciar Sesión</a>
                <a href="/web/registro" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Registrarse</a>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] text-white py-20">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center">
                <h1 class="text-4xl md:text-5xl font-bold mb-6">Contáctanos</h1>
                <p class="text-xl max-w-3xl mx-auto opacity-90">
                    Estamos aquí para ayudarte. Envíanos tu mensaje y te responderemos lo antes posible.
                </p>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="py-16">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
                <!-- Contact Form -->
                <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                    <h2 class="text-2xl font-bold text-[#1a4b8c] mb-6">Envíanos un mensaje</h2>
                    <form action="/contacto" method="POST" class="space-y-6">
                        <div>
                            <label for="nombre" class="block text-sm font-medium text-neutral-gray-700 mb-2">Nombre completo</label>
                            <input type="text" id="nombre" name="nombre" required
                                class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent">
                        </div>
                        <div>
                            <label for="email" class="block text-sm font-medium text-neutral-gray-700 mb-2">Correo electrónico</label>
                            <input type="email" id="email" name="email" required
                                class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent">
                        </div>
                        <div>
                            <label for="asunto" class="block text-sm font-medium text-neutral-gray-700 mb-2">Asunto</label>
                            <input type="text" id="asunto" name="asunto" required
                                class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent">
                        </div>
                        <div>
                            <label for="mensaje" class="block text-sm font-medium text-neutral-gray-700 mb-2">Mensaje</label>
                            <textarea id="mensaje" name="mensaje" rows="4" required
                                class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent"></textarea>
                        </div>
                        <button type="submit"
                            class="w-full bg-[#1a4b8c] text-white px-6 py-3 rounded-lg hover:bg-[#2c6bc2] transition-all duration-300 hover:-translate-y-0.5 hover:shadow-md">
                            Enviar mensaje
                        </button>
                    </form>
                </div>

                <!-- Contact Information -->
                <div class="space-y-8">
                    <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                        <h2 class="text-2xl font-bold text-[#1a4b8c] mb-6">Información de contacto</h2>
                        <div class="space-y-6">
                            <!-- Dirección -->
                            <div class="flex items-start space-x-4">
                                <div class="w-12 h-12 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center flex-shrink-0">
                                    <svg class="w-6 h-6 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h3 class="text-lg font-semibold text-[#1a4b8c] mb-1">Dirección</h3>
                                    <p class="text-neutral-gray-600">
                                        Calle 123<br>
                                        Medellín<br>
                                        Colombia
                                    </p>
                                </div>
                            </div>

                            <!-- Teléfono -->
                            <div class="flex items-start space-x-4">
                                <div class="w-12 h-12 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center flex-shrink-0">
                                    <svg class="w-6 h-6 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h3 class="text-lg font-semibold text-[#1a4b8c] mb-1">Teléfono</h3>
                                    <p class="text-neutral-gray-600">
                                        +52 (55) 1234-5678<br>
                                        +52 (55) 8765-4321
                                    </p>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="flex items-start space-x-4">
                                <div class="w-12 h-12 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center flex-shrink-0">
                                    <svg class="w-6 h-6 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h3 class="text-lg font-semibold text-[#1a4b8c] mb-1">Email</h3>
                                    <p class="text-neutral-gray-600">
                                        contacto@vaultpay.com<br>
                                        soporte@vaultpay.com
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Horario de Atención -->
                    <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                        <h2 class="text-2xl font-bold text-[#1a4b8c] mb-6">Horario de atención</h2>
                        <div class="space-y-4">
                            <div class="flex justify-between items-center">
                                <span class="text-neutral-gray-600">Lunes - Viernes</span>
                                <span class="font-semibold text-[#1a4b8c]">9:00 AM - 6:00 PM</span>
                            </div>
                            <div class="flex justify-between items-center">
                                <span class="text-neutral-gray-600">Sábados</span>
                                <span class="font-semibold text-[#1a4b8c]">10:00 AM - 2:00 PM</span>
                            </div>
                            <div class="flex justify-between items-center">
                                <span class="text-neutral-gray-600">Domingos</span>
                                <span class="font-semibold text-[#1a4b8c]">Cerrado</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <section class="py-16 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                <h2 class="text-2xl font-bold text-[#1a4b8c] mb-6">Ubicación</h2>
                <div class="aspect-w-16 aspect-h-9">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101.2!2d-75.5644!3d6.2442!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4428dfb80fad05%3A0x42137cfcc7b53b56!2sMedell%C3%ADn%2C%20Antioquia!5e0!3m2!1ses-419!2sco!4v1647891234567!5m2!1ses-419!2sco"
                        width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        class="rounded-lg"></iframe>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-[#1a4b8c] text-white py-12">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <!-- Logo y Descripción -->
                <div class="space-y-4">
                    <div class="flex items-center gap-2">
                        <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572483/VaultPay_Logo_solo_rlok0h.png"
                            alt="VaultPay Logo" class="h-8 w-auto brightness-0 invert">
                        <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572484/VaultPay_n1yuov.png"
                            alt="VaultPay" class="h-6 w-auto brightness-0 invert">
                    </div>
                    <p class="text-sm text-white/80">
                        Tu plataforma segura para gestionar pagos y transferencias de manera eficiente y confiable.
                    </p>
                </div>

                <!-- Enlaces Rápidos -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Enlaces Rápidos</h3>
                    <ul class="space-y-2">
                        <li><a href="/web/inicio" class="text-white/80 hover:text-white transition-colors">Inicio</a></li>
                        <li><a href="/web/servicios" class="text-white/80 hover:text-white transition-colors">Servicios</a></li>
                        <li><a href="/web/nosotros" class="text-white/80 hover:text-white transition-colors">Nosotros</a></li>
                        <li><a href="/web/contacto" class="text-white/80 hover:text-white transition-colors">Contacto</a></li>
                    </ul>
                </div>

                <!-- Servicios -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Servicios</h3>
                    <ul class="space-y-2">
                        <li><a href="/web/transferencias" class="text-white/80 hover:text-white transition-colors">Transferencias</a></li>
                        <li><a href="/web/pagos" class="text-white/80 hover:text-white transition-colors">Pagos</a></li>
                        <li><a href="/web/seguridad" class="text-white/80 hover:text-white transition-colors">Seguridad</a></li>
                    </ul>
                </div>

                <!-- Redes Sociales -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Síguenos</h3>
                    <div class="flex space-x-4">
                        <a href="#" class="text-white/80 hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                            </svg>
                        </a>
                        <a href="#" class="text-white/80 hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/>
                            </svg>
                        </a>
                        <a href="#" class="text-white/80 hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717 1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335 1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.319 1.347 20.651.935 19.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074 4.85c-.061 1.17-.256 1.805-.421 2.227-.224.562-.479.96-.899 1.382-.419.419-.824.679-1.38.896-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211 0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421-.569-.224-.96-.479-1.379-.899-.421-.419-.69-.824-.9-1.38-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421 1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678c-3.405 0-6.162 2.76-6.162 6.162 0 3.405 2.76 6.162 6.162 6.162 3.405 0 6.162-2.76 6.162-6.162 0-3.405-2.76-6.162-6.162-6.162zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405c0 .795-.646 1.44-1.44 1.44-.795 0-1.44-.646-1.44-1.44 0-.794.646-1.439 1.44-1.439.793-.001 1.44.645 1.44 1.439z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Copyright -->
            <div class="border-t border-white/10 mt-12 pt-8 text-center text-sm text-white/80">
                <p>&copy; 2025 VaultPay. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            function toggleMenu() {
                const mobileMenu = document.getElementById('mobile-menu');
                mobileMenu.classList.toggle('hidden');
            }
            window.toggleMenu = toggleMenu;
        });
    </script>
</body>
</html> 