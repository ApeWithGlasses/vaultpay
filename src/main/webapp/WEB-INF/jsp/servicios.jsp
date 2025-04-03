<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicios - VaultPay</title>
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
                        <span class="absolute bottom-0 left-1/2 w-4/5 h-0.5 bg-[#1a4b8c] -translate-x-1/2"></span>
                    </a>
                    <a href="/web/nosotros" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Nosotros</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
                    </a>
                    <a href="/web/contacto" class="text-neutral-gray-700 hover:text-[#1a4b8c] px-4 py-2 relative group">
                        <span>Contacto</span>
                        <span class="absolute bottom-0 left-1/2 w-0 h-0.5 bg-[#1a4b8c] transition-all duration-300 group-hover:w-4/5 -translate-x-1/2"></span>
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
                <a href="/web/servicios" class="block text-center py-3 text-[#1a4b8c] font-semibold">Servicios</a>
                <a href="/web/nosotros" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Nosotros</a>
                <a href="/web/contacto" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Contacto</a>
                <a href="/web/login" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Iniciar Sesión</a>
                <a href="/web/registro" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Registrarse</a>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-[#1a4b8c] to-[#2c6bc2] text-white py-20">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center">
                <h1 class="text-4xl md:text-5xl font-bold mb-6">Nuestros Servicios</h1>
                <p class="text-xl max-w-3xl mx-auto opacity-90">
                    Soluciones financieras digitales diseñadas para tus necesidades
                </p>
            </div>
        </div>
    </section>

    <!-- Services Grid -->
    <section class="py-16">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Transferencias -->
                <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10 hover:shadow-md transition-all duration-300">
                    <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4"></path>
                        </svg>
                    </div>
                    <h3 class="text-2xl font-bold text-[#1a4b8c] mb-4">Transferencias</h3>
                    <p class="text-neutral-gray-600 mb-6">
                        Realiza transferencias instantáneas a cualquier cuenta bancaria nacional o internacional 
                        con las más altas medidas de seguridad.
                    </p>
                    <ul class="space-y-3 mb-6">
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Transferencias instantáneas
                        </li>
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Sin límites de monto
                        </li>
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Seguimiento en tiempo real
                        </li>
                    </ul>
                    <a href="/transferencias" class="text-[#1a4b8c] font-semibold hover:underline inline-flex items-center">
                        Conocer más
                        <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
                        </svg>
                    </a>
                </div>

                <!-- Pagos -->
                <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10 hover:shadow-md transition-all duration-300">
                    <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 10h18M7 15h1m4 0h1m-7 4h12a3 3 0 003-3V8a3 3 0 00-3-3H6a3 3 0 00-3 3v8a3 3 0 003 3z"></path>
                        </svg>
                    </div>
                    <h3 class="text-2xl font-bold text-[#1a4b8c] mb-4">Pagos</h3>
                    <p class="text-neutral-gray-600 mb-6">
                        Paga servicios, facturas y compras en línea de manera segura y rápida con múltiples 
                        métodos de pago disponibles.
                    </p>
                    <ul class="space-y-3 mb-6">
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Múltiples métodos de pago
                        </li>
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Pagos programados
                        </li>
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Historial detallado
                        </li>
                    </ul>
                    <a href="/pagos" class="text-[#1a4b8c] font-semibold hover:underline inline-flex items-center">
                        Conocer más
                        <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
                        </svg>
                    </a>
                </div>

                <!-- Seguridad -->
                <div class="bg-white rounded-2xl p-8 shadow-sm border border-[#1a4b8c]/10 hover:shadow-md transition-all duration-300">
                    <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                        </svg>
                    </div>
                    <h3 class="text-2xl font-bold text-[#1a4b8c] mb-4">Seguridad</h3>
                    <p class="text-neutral-gray-600 mb-6">
                        Protección avanzada para tus transacciones con autenticación de dos factores y 
                        encriptación de última generación.
                    </p>
                    <ul class="space-y-3 mb-6">
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Autenticación de dos factores
                        </li>
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Encriptación SSL/TLS
                        </li>
                        <li class="flex items-center text-neutral-gray-600">
                            <svg class="w-5 h-5 text-[#1a4b8c] mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Monitoreo 24/7
                        </li>
                    </ul>
                    <a href="/seguridad" class="text-[#1a4b8c] font-semibold hover:underline inline-flex items-center">
                        Conocer más
                        <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-16 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <h2 class="text-3xl font-bold text-center text-[#1a4b8c] mb-12">Características Destacadas</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Soporte 24/7 -->
                <div class="text-center">
                    <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mx-auto mb-6">
                        <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold text-[#1a4b8c] mb-4">Soporte 24/7</h3>
                    <p class="text-neutral-gray-600">
                        Asistencia técnica y atención al cliente disponible las 24 horas, los 7 días de la semana.
                    </p>
                </div>

                <!-- Interfaz Intuitiva -->
                <div class="text-center">
                    <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mx-auto mb-6">
                        <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold text-[#1a4b8c] mb-4">Interfaz Intuitiva</h3>
                    <p class="text-neutral-gray-600">
                        Diseño moderno y fácil de usar que te permite realizar operaciones en pocos clics.
                    </p>
                </div>

                <!-- Integración -->
                <div class="text-center">
                    <div class="w-16 h-16 bg-[#1a4b8c]/10 rounded-xl flex items-center justify-center mx-auto mb-6">
                        <svg class="w-8 h-8 text-[#1a4b8c]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold text-[#1a4b8c] mb-4">Integración</h3>
                    <p class="text-neutral-gray-600">
                        Compatible con los principales sistemas y plataformas del mercado.
                    </p>
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
                        <li><a href="/inicio" class="text-white/80 hover:text-white transition-colors">Inicio</a></li>
                        <li><a href="/servicios" class="text-white/80 hover:text-white transition-colors">Servicios</a></li>
                        <li><a href="/nosotros" class="text-white/80 hover:text-white transition-colors">Nosotros</a></li>
                        <li><a href="/contacto" class="text-white/80 hover:text-white transition-colors">Contacto</a></li>
                    </ul>
                </div>

                <!-- Servicios -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Servicios</h3>
                    <ul class="space-y-2">
                        <li><a href="/transferencias" class="text-white/80 hover:text-white transition-colors">Transferencias</a></li>
                        <li><a href="/pagos" class="text-white/80 hover:text-white transition-colors">Pagos</a></li>
                        <li><a href="/seguridad" class="text-white/80 hover:text-white transition-colors">Seguridad</a></li>
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