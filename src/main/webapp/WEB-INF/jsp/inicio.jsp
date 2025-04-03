<!-- src/main/webapp/WEB-INF/jsp/inicio.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VaultPay - Inicio</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
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

<body class="bg-neutral-gray-100">
    <!-- Navigation -->
    <nav class="bg-white shadow-sm sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <a href="/web/inicio" class="logo-container flex items-center gap-2">
                        <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572483/VaultPay_Logo_solo_rlok0h.png"
                            alt="VaultPay Logo" class="h-8 w-auto transition-transform duration-300 hover:scale-105">
                        <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572484/VaultPay_n1yuov.png"
                            alt="VaultPay" class="h-6 w-auto transition-transform duration-300 hover:scale-105">
                    </a>
                </div>

                <!-- Mobile Menu Button -->
                <button class="md:hidden p-2 rounded-lg text-[#1a4b8c] hover:bg-[#1a4b8c]/10 transition-colors" onclick="toggleMenu()">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>

                <!-- Desktop Navigation -->
                <div class="hidden md:flex items-center space-x-8">
                    <a href="/web/inicio" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Inicio</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/web/planes" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Planes</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/web/nosotros" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Nosotros</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                </div>

                <!-- Desktop Auth Buttons -->
                <div class="hidden md:flex items-center space-x-4">
                    <a href="/web/login" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2">Iniciar Sesi&oacute;n</a>
                    <a href="/web/registro" class="bg-[#1a4b8c] text-white px-6 py-2 rounded-lg hover:bg-[#2c6bc2] transition-all duration-300 hover:-translate-y-0.5 hover:shadow-md">Registrarse</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Mobile Menu -->
    <div id="mobile-menu" class="hidden md:hidden bg-white shadow-lg absolute top-16 left-0 right-0 z-40">
        <div class="px-4 py-2 space-y-2">
            <a href="/web/inicio" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Inicio</a>
            <a href="/web/planes" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Planes</a>
            <a href="/web/nosotros" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Nosotros</a>
            <div class="border-t border-gray-200 mt-2 pt-2 space-y-2">
                <a href="/web/login" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Iniciar Sesi&oacute;n</a>
                <a href="/web/registro" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Registrarse</a>
            </div>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] min-h-[80vh] flex items-center py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20">
            <div class="flex flex-col md:flex-row items-center justify-between">
                <!-- Hero Content -->
                <div class="md:w-1/2 text-white pr-0 md:pr-12">
                    <h1 class="text-4xl md:text-5xl font-bold leading-tight mb-6">
                        Tu banca digital<br>
                        <span class="text-[#FFD700]">más segura y fácil</span>
                    </h1>
                    <p class="text-xl leading-relaxed mb-8 opacity-90 max-w-[90%]">
                        Gestiona tus finanzas de manera inteligente con VaultPay. 
                        Transacciones seguras y todo en la palma de tu mano.
                    </p>
                    <div class="flex gap-6 flex-wrap">
                        <a href="/web/registro" class="bg-white text-[#1a4b8c] px-10 py-4 rounded-lg font-semibold hover:bg-gray-50 transition-all duration-300">
                            Comienza Ahora
                        </a>
                        <a href="/web/planes" class="border-2 border-white text-white px-10 py-4 rounded-lg font-semibold hover:bg-white hover:text-[#1a4b8c] transition-all duration-300">
                            Ver Planes
                        </a>
                    </div>
                </div>

                <!-- Phone Image -->
                <div class="md:w-1/2 mt-8 md:mt-0">
                    <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743575436/phone-mockup.png" 
                         alt="VaultPay Mobile App" 
                         class="w-full max-w-[85%] mx-auto md:max-w-none md:-translate-y-4 drop-shadow-[0_20px_30px_rgba(0,0,0,0.2)]">
                </div>
            </div>
        </div>
    </div>

    <!-- Services Section -->
    <section class="py-24 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <h2 class="text-4xl font-bold text-center text-[#1a4b8c] mb-12">Nuestros Servicios</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Transferencias -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10 hover:-translate-y-1 hover:shadow-lg transition-all duration-300">
                    <div class="w-16 h-16 bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] rounded-xl flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-[#1a4b8c] mb-4">Transferencias Instantáneas</h3>
                    <p class="text-neutral-gray-600 leading-relaxed">
                        Realiza transferencias nacionales e internacionales de forma segura y rápida. 
                        Sin comisiones ocultas y con seguimiento en tiempo real.
                    </p>
                </div>

                <!-- Seguridad -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10 hover:-translate-y-1 hover:shadow-lg transition-all duration-300">
                    <div class="w-16 h-16 bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] rounded-xl flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-[#1a4b8c] mb-4">Seguridad Avanzada</h3>
                    <p class="text-neutral-gray-600 leading-relaxed">
                        Protección de nivel bancario con autenticación de dos factores, 
                        encriptación de datos y monitoreo de transacciones 24/7.
                    </p>
                </div>

                <!-- Pagos -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10 hover:-translate-y-1 hover:shadow-lg transition-all duration-300">
                    <div class="w-16 h-16 bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] rounded-xl flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 10h18M7 15h1m4 0h1m-7 4h12a3 3 0 003-3V8a3 3 0 00-3-3H6a3 3 0 00-3 3v8a3 3 0 003 3z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-[#1a4b8c] mb-4">Pagos Digitales</h3>
                    <p class="text-neutral-gray-600 leading-relaxed">
                        Paga servicios, facturas y compras en línea de forma segura. 
                        Integración con los principales comercios y servicios.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-24 bg-gradient-to-b from-white to-[#1a4b8c]/5">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-[#1a4b8c] mb-4">¿Por qué elegir VaultPay?</h2>
                <p class="text-xl text-neutral-gray-600 max-w-2xl mx-auto">
                    Descubre las características que hacen de VaultPay tu mejor opción para gestionar tus finanzas
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-12">
                <!-- Feature 1 -->
                <div class="relative group">
                    <div class="absolute inset-0 bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] rounded-2xl opacity-0 group-hover:opacity-10 transition-opacity duration-300"></div>
                    <div class="relative bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                        <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mb-6">
                            <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                            </svg>
                        </div>
                        <h3 class="text-2xl font-bold text-[#1a4b8c] mb-2">Transferencias Instantáneas</h3>
                        <p class="text-neutral-gray-600 mb-6">Realiza transferencias en segundos, sin importar la hora o el día.</p>
                        <div class="flex items-center text-[#1a4b8c] font-semibold">
                            <span class="text-3xl mr-2">99.9%</span>
                            <span class="text-sm">Tiempo de disponibilidad</span>
                        </div>
                    </div>
                </div>

                <!-- Feature 2 -->
                <div class="relative group">
                    <div class="absolute inset-0 bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] rounded-2xl opacity-0 group-hover:opacity-10 transition-opacity duration-300"></div>
                    <div class="relative bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                        <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mb-6">
                            <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                            </svg>
                        </div>
                        <h3 class="text-2xl font-bold text-[#1a4b8c] mb-2">Seguridad de Nivel Bancario</h3>
                        <p class="text-neutral-gray-600 mb-6">Protección avanzada para tus transacciones y datos personales.</p>
                        <div class="flex items-center text-[#1a4b8c] font-semibold">
                            <span class="text-3xl mr-2">24/7</span>
                            <span class="text-sm">Monitoreo de seguridad</span>
                        </div>
                    </div>
                </div>

                <!-- Feature 3 -->
                <div class="relative group">
                    <div class="absolute inset-0 bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] rounded-2xl opacity-0 group-hover:opacity-10 transition-opacity duration-300"></div>
                    <div class="relative bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10">
                        <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mb-6">
                            <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                            </svg>
                        </div>
                        <h3 class="text-2xl font-bold text-[#1a4b8c] mb-2">Soporte Premium</h3>
                        <p class="text-neutral-gray-600 mb-6">Atención personalizada cuando más la necesites.</p>
                        <div class="flex items-center text-[#1a4b8c] font-semibold">
                            <span class="text-3xl mr-2">5min</span>
                            <span class="text-sm">Tiempo de respuesta promedio</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Stats Section -->
            <div class="mt-24 grid grid-cols-2 md:grid-cols-4 gap-8">
                <div class="text-center">
                    <div class="text-4xl font-bold text-[#1a4b8c] mb-2">1M+</div>
                    <div class="text-neutral-gray-600">Usuarios Activos</div>
                </div>
                <div class="text-center">
                    <div class="text-4xl font-bold text-[#1a4b8c] mb-2">$500M+</div>
                    <div class="text-neutral-gray-600">Transacciones Procesadas</div>
                </div>
                <div class="text-center">
                    <div class="text-4xl font-bold text-[#1a4b8c] mb-2">50+</div>
                    <div class="text-neutral-gray-600">Países</div>
                </div>
                <div class="text-center">
                    <div class="text-4xl font-bold text-[#1a4b8c] mb-2">99.9%</div>
                    <div class="text-neutral-gray-600">Satisfacción del Cliente</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="py-24 bg-gradient-to-b from-[#1a4b8c]/5 to-white">
        <div class="max-w-7xl mx-auto px-4">
            <h2 class="text-4xl font-bold text-center text-[#1a4b8c] mb-12">Lo que dicen nuestros clientes</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Testimonial 1 -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10">
                    <div class="flex items-center mb-6">
                        <div class="w-12 h-12 bg-[#1a4b8c] rounded-full flex items-center justify-center text-white font-semibold text-xl">
                            M
                        </div>
                        <div class="ml-4">
                            <h4 class="font-semibold text-[#1a4b8c]">María González</h4>
                            <p class="text-neutral-gray-600 text-sm">Cliente desde 2023</p>
                        </div>
                    </div>
                    <p class="text-neutral-gray-600 leading-relaxed">
                        "VaultPay ha simplificado completamente mi vida financiera. Las transferencias instantáneas y la seguridad que ofrece son impresionantes."
                    </p>
                    <div class="flex text-[#FFD700] mt-4">
                        ★★★★★
                    </div>
                </div>

                <!-- Testimonial 2 -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10">
                    <div class="flex items-center mb-6">
                        <div class="w-12 h-12 bg-[#1a4b8c] rounded-full flex items-center justify-center text-white font-semibold text-xl">
                            J
                        </div>
                        <div class="ml-4">
                            <h4 class="font-semibold text-[#1a4b8c]">Juan Pérez</h4>
                            <p class="text-neutral-gray-600 text-sm">Cliente desde 2022</p>
                        </div>
                    </div>
                    <p class="text-neutral-gray-600 leading-relaxed">
                        "La mejor aplicación bancaria que he usado. La interfaz es intuitiva y el soporte al cliente es excelente."
                    </p>
                    <div class="flex text-[#FFD700] mt-4">
                        ★★★★★
                    </div>
                </div>

                <!-- Testimonial 3 -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10">
                    <div class="flex items-center mb-6">
                        <div class="w-12 h-12 bg-[#1a4b8c] rounded-full flex items-center justify-center text-white font-semibold text-xl">
                            A
                        </div>
                        <div class="ml-4">
                            <h4 class="font-semibold text-[#1a4b8c]">Ana Martínez</h4>
                            <p class="text-neutral-gray-600 text-sm">Cliente desde 2023</p>
                        </div>
                    </div>
                    <p class="text-neutral-gray-600 leading-relaxed">
                        "La seguridad y la facilidad de uso son lo que más me gusta. Puedo hacer todas mis operaciones bancarias sin preocupaciones."
                    </p>
                    <div class="flex text-[#FFD700] mt-4">
                        ★★★★★
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="py-24 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
                <!-- Contact Info -->
                <div>
                    <h2 class="text-4xl font-bold text-[#1a4b8c] mb-6">Contáctanos</h2>
                    <p class="text-neutral-gray-600 mb-8">
                        ¿Tienes alguna pregunta? Nuestro equipo está aquí para ayudarte.
                    </p>
                    <div class="space-y-6">
                        <div class="flex items-start">
                            <div class="w-12 h-12 bg-[#1a4b8c]/10 rounded-full flex items-center justify-center flex-shrink-0">
                                <svg class="w-6 h-6 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                                </svg>
                            </div>
                            <div class="ml-4">
                                <h3 class="text-lg font-semibold text-[#1a4b8c]">Teléfono</h3>
                                <p class="text-neutral-gray-600">+1 (555) 123-4567</p>
                            </div>
                        </div>
                        <div class="flex items-start">
                            <div class="w-12 h-12 bg-[#1a4b8c]/10 rounded-full flex items-center justify-center flex-shrink-0">
                                <svg class="w-6 h-6 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                                </svg>
                            </div>
                            <div class="ml-4">
                                <h3 class="text-lg font-semibold text-[#1a4b8c]">Email</h3>
                                <p class="text-neutral-gray-600">soporte@vaultpay.com</p>
                            </div>
                        </div>
                        <div class="flex items-start">
                            <div class="w-12 h-12 bg-[#1a4b8c]/10 rounded-full flex items-center justify-center flex-shrink-0">
                                <svg class="w-6 h-6 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                </svg>
                            </div>
                            <div class="ml-4">
                                <h3 class="text-lg font-semibold text-[#1a4b8c]">Dirección</h3>
                                <p class="text-neutral-gray-600">Calle 123, Medellín, Colombia</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="bg-white rounded-xl p-8 shadow-sm border border-[#1a4b8c]/10">
                    <form class="space-y-6">
                        <div>
                            <label for="name" class="block text-sm font-medium text-neutral-gray-700 mb-1">Nombre</label>
                            <input type="text" id="name" name="name" class="w-full px-4 py-2 border border-neutral-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent">
                        </div>
                        <div>
                            <label for="email" class="block text-sm font-medium text-neutral-gray-700 mb-1">Email</label>
                            <input type="email" id="email" name="email" class="w-full px-4 py-2 border border-neutral-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent">
                        </div>
                        <div>
                            <label for="message" class="block text-sm font-medium text-neutral-gray-700 mb-1">Mensaje</label>
                            <textarea id="message" name="message" rows="4" class="w-full px-4 py-2 border border-neutral-gray-300 rounded-lg focus:ring-2 focus:ring-[#1a4b8c] focus:border-transparent"></textarea>
                        </div>
                        <button type="submit" class="w-full bg-[#1a4b8c] text-white px-6 py-3 rounded-lg font-semibold hover:bg-[#2c6bc2] transition-all duration-300">
                            Enviar Mensaje
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-[#1a4b8c] text-white py-12">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                <!-- Logo and Description -->
                <div class="space-y-4">
                    <div class="flex items-center gap-2">
                        <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572483/VaultPay_Logo_solo_rlok0h.png"
                            alt="VaultPay Logo" class="h-8 w-auto brightness-0 invert">
                        <img src="https://res.cloudinary.com/dtux0itp7/image/upload/v1743572484/VaultPay_n1yuov.png"
                            alt="VaultPay" class="h-6 w-auto brightness-0 invert">
                    </div>
                    <p class="text-white/80 text-sm">
                        Tu banca digital más segura y fácil. Gestiona tus finanzas de manera inteligente con VaultPay.
                    </p>
                </div>

                <!-- Quick Links -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Enlaces Rápidos</h3>
                    <ul class="space-y-2">
                        <li><a href="/web/inicio" class="text-white/80 hover:text-white transition-colors">Inicio</a></li>
                        <li><a href="/web/planes" class="text-white/80 hover:text-white transition-colors">Planes</a></li>
                        <li><a href="/web/nosotros" class="text-white/80 hover:text-white transition-colors">Nosotros</a></li>
                        <li><a href="/web/contacto" class="text-white/80 hover:text-white transition-colors">Contacto</a></li>
                    </ul>
                </div>

                <!-- Services -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Servicios</h3>
                    <ul class="space-y-2">
                        <li><a href="/web/transferencias" class="text-white/80 hover:text-white transition-colors">Transferencias</a></li>
                        <li><a href="/web/pagos" class="text-white/80 hover:text-white transition-colors">Pagos Digitales</a></li>
                        <li><a href="/web/seguridad" class="text-white/80 hover:text-white transition-colors">Seguridad</a></li>
                    </ul>
                </div>

                <!-- Social Media -->
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

            <!-- Bottom Bar -->
            <div class="border-t border-white/10 mt-12 pt-8 text-center text-sm text-white/60">
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