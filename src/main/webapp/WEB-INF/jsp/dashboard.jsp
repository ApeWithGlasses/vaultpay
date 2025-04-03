<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - VaultPay</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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
                    <div class="relative">
                        <button id="userMenuButton" class="flex items-center space-x-2 focus:outline-none bg-white/50 backdrop-blur-sm px-4 py-2 rounded-lg shadow-sm hover:shadow-md transition-all">
                            <div class="w-8 h-8 rounded-full bg-[#1a4b8c] flex items-center justify-center text-white">
                                ${userInitial}
                            </div>
                            <span class="text-gray-700">${userName}</span>
                            <i class="fas fa-chevron-down text-gray-500"></i>
                        </button>
                        <div id="userMenu" class="hidden absolute right-0 mt-2 w-48 bg-white rounded-lg shadow-lg py-1 border border-gray-100">
                            <a href="/web/perfil" class="flex items-center space-x-2 px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                <i class="fas fa-user"></i>
                                <span>Mi Perfil</span>
                            </a>
                            <a href="/web/configuraciones" class="flex items-center space-x-2 px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                <i class="fas fa-cog"></i>
                                <span>Configuraciones</span>
                            </a>
                            <div class="border-t border-gray-100 my-1"></div>
                            <form action="/web/logout" method="POST" class="w-full">
                                <button type="submit" class="flex items-center space-x-2 w-full px-4 py-2 text-sm text-red-600 hover:bg-red-50">
                                    <i class="fas fa-sign-out-alt"></i>
                                    <span>Cerrar Sesión</span>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobile-menu" class="hidden md:hidden bg-white shadow-lg absolute top-16 left-0 right-0 z-40">
            <div class="px-4 py-2 space-y-2">
                <a href="/perfil" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Mi Perfil</a>
                <a href="/configuraciones" class="block text-center py-3 text-neutral-gray-700 hover:text-[#1a4b8c]">Configuraciones</a>
                <form action="/web/logout" method="POST" class="w-full">
                    <button type="submit" class="w-full text-center py-3 text-red-600 font-semibold">Cerrar Sesión</button>
                </form>
            </div>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="max-w-7xl mx-auto px-4 py-8">
        <!-- Welcome Section -->
        <div class="bg-white rounded-2xl shadow-sm border border-[#1a4b8c]/10 p-8 mb-8">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-3xl font-bold text-[#1a4b8c] mb-2">Bienvenido, ${userName}</h1>
                    <p class="text-neutral-gray-600">Gestiona tus cuentas bancarias y realiza transacciones de manera segura.</p>
                </div>
                <button onclick="showAddAccountModal()" class="bg-[#1a4b8c] text-white px-6 py-3 rounded-lg hover:bg-[#2c6bc2] transition-all duration-300 hover:-translate-y-0.5 hover:shadow-md">
                    <i class="fas fa-plus mr-2"></i>Agregar Cuenta
                </button>
            </div>
        </div>

        <!-- Accounts Section -->
        <div class="bg-white rounded-lg shadow-sm p-6">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-xl font-semibold text-[#1a4b8c]">Mis Cuentas Bancarias</h2>
                <button onclick="showAddAccountModal()" class="bg-[#1a4b8c] text-white px-4 py-2 rounded-md hover:bg-[#2c6bc2] transition-colors">
                    <i class="fas fa-plus mr-2"></i>Agregar Cuenta
                </button>
            </div>

            <c:if test="${not empty errorMessage}">
                <div class="mb-4 p-4 bg-red-100 text-red-700 rounded-lg">
                    <p class="font-medium">${errorMessage}</p>
                </div>
            </c:if>

            <c:if test="${not empty successMessage}">
                <div class="mb-4 p-4 bg-green-100 text-green-700 rounded-lg">
                    <p class="font-medium">${successMessage}</p>
                </div>
            </c:if>

            <c:choose>
                <c:when test="${not empty accounts}">
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <c:forEach items="${accounts}" var="account">
                            <div class="border border-gray-200 rounded-lg p-6 hover:shadow-md transition-shadow">
                                <div class="flex justify-between items-start mb-4">
                                    <div>
                                        <h3 class="text-lg font-semibold text-[#1a4b8c]">Cuenta Bancaria</h3>
                                        <p class="text-gray-600">${account.user.name}</p>
                                    </div>
                                    <div class="flex items-center gap-2">
                                        <span class="text-green-600 font-semibold">$${account.balance}</span>
                                        <button onclick="showEditBalanceModal('${account.accountNumber}', ${account.balance})" 
                                            class="text-[#1a4b8c] hover:text-[#2c6bc2]">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                        <button onclick="confirmDeleteAccount('${account.accountNumber}')"
                                            class="text-red-600 hover:text-red-800">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="border-t border-gray-200 pt-4">
                                    <p class="text-sm text-gray-500">Número de cuenta</p>
                                    <p class="font-mono">${account.accountNumber}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="border-2 border-dashed border-gray-300 rounded-lg p-12 text-center">
                        <i class="fas fa-university text-4xl text-gray-400 mb-4"></i>
                        <p class="text-gray-500 text-lg">No tienes cuentas bancarias asociadas</p>
                        <p class="text-gray-400 mt-2">Haz clic en "Agregar Cuenta" para comenzar</p>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <!-- Add Account Modal -->
    <div id="addAccountModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center">
        <div class="bg-white rounded-lg p-6 w-full max-w-md">
            <div class="flex justify-between items-center mb-4">
                <h3 class="text-xl font-semibold text-[#1a4b8c]">Agregar Nueva Cuenta</h3>
                <button onclick="hideAddAccountModal()" class="text-gray-500 hover:text-gray-700">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form id="addAccountForm" action="/web/accounts/add" method="POST">
                <div class="space-y-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Número de Cuenta</label>
                        <input type="text" name="accountNumber" required
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-[#1a4b8c] focus:ring-[#1a4b8c]">
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Saldo Inicial</label>
                        <input type="number" name="balance" step="0.01" required
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-[#1a4b8c] focus:ring-[#1a4b8c]">
                    </div>
                </div>
                <div class="mt-6 flex justify-end space-x-3">
                    <button type="button" onclick="hideAddAccountModal()"
                        class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 hover:bg-gray-50">
                        Cancelar
                    </button>
                    <button type="submit"
                        class="px-4 py-2 bg-[#1a4b8c] text-white rounded-md hover:bg-[#2c6bc2]">
                        Agregar Cuenta
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Edit Balance Modal -->
    <div id="editBalanceModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center">
        <div class="bg-white rounded-lg p-6 w-full max-w-md">
            <div class="flex justify-between items-center mb-4">
                <h3 class="text-xl font-semibold text-[#1a4b8c]">Editar Saldo</h3>
                <button onclick="hideEditBalanceModal()" class="text-gray-500 hover:text-gray-700">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form id="editBalanceForm" action="/web/accounts/update-balance" method="POST">
                <input type="hidden" name="accountNumber" id="editAccountNumber">
                <div class="space-y-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Nuevo Saldo</label>
                        <input type="number" name="balance" id="editBalance" step="0.01" required
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-[#1a4b8c] focus:ring-[#1a4b8c]">
                    </div>
                </div>
                <div class="mt-6 flex justify-end space-x-3">
                    <button type="button" onclick="hideEditBalanceModal()"
                        class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 hover:bg-gray-50">
                        Cancelar
                    </button>
                    <button type="submit"
                        class="px-4 py-2 bg-[#1a4b8c] text-white rounded-md hover:bg-[#2c6bc2]">
                        Actualizar Saldo
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div id="deleteAccountModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center">
        <div class="bg-white rounded-lg p-6 w-full max-w-md">
            <div class="flex justify-between items-center mb-4">
                <h3 class="text-xl font-semibold text-red-600">Eliminar Cuenta</h3>
                <button onclick="hideDeleteAccountModal()" class="text-gray-500 hover:text-gray-700">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <p class="text-gray-600 mb-4">¿Estás seguro de que deseas eliminar esta cuenta? Esta acción no se puede deshacer.</p>
            <form id="deleteAccountForm" action="/web/accounts/delete" method="POST">
                <input type="hidden" name="accountNumber" id="deleteAccountNumber">
                <div class="mt-6 flex justify-end space-x-3">
                    <button type="button" onclick="hideDeleteAccountModal()"
                        class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 hover:bg-gray-50">
                        Cancelar
                    </button>
                    <button type="submit"
                        class="px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700">
                        Eliminar Cuenta
                    </button>
                </div>
            </form>
        </div>
    </div>

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
        function cerrarSesion() {
            window.location.href = '/web/login';
        }

        function showAddAccountModal() {
            document.getElementById('addAccountModal').classList.remove('hidden');
        }

        function hideAddAccountModal() {
            document.getElementById('addAccountModal').classList.add('hidden');
        }

        document.getElementById('addAccountForm').addEventListener('submit', function(e) {
            hideAddAccountModal();
        });

        document.addEventListener('DOMContentLoaded', function() {
            function toggleMenu() {
                const mobileMenu = document.getElementById('mobile-menu');
                mobileMenu.classList.toggle('hidden');
            }
            window.toggleMenu = toggleMenu;

            // Función para cerrar sesión
            function cerrarSesion() {
                fetch('/web/logout', {
                    method: 'POST',
                    credentials: 'same-origin'
                })
                .then(response => {
                    if (response.ok) {
                        window.location.href = '/web/login';
                    }
                })
                .catch(error => {
                    console.error('Error al cerrar sesión:', error);
                });
            }
            window.cerrarSesion = cerrarSesion;
        });

        const userMenuButton = document.getElementById('userMenuButton');
        const userMenu = document.getElementById('userMenu');

        userMenuButton.addEventListener('click', () => {
            userMenu.classList.toggle('hidden');
        });

        document.addEventListener('click', (event) => {
            if (!userMenuButton.contains(event.target) && !userMenu.contains(event.target)) {
                userMenu.classList.add('hidden');
            }
        });

        function showEditBalanceModal(accountNumber, currentBalance) {
            document.getElementById('editAccountNumber').value = accountNumber;
            document.getElementById('editBalance').value = currentBalance;
            document.getElementById('editBalanceModal').classList.remove('hidden');
        }

        function hideEditBalanceModal() {
            document.getElementById('editBalanceModal').classList.add('hidden');
        }

        function confirmDeleteAccount(accountNumber) {
            document.getElementById('deleteAccountNumber').value = accountNumber;
            document.getElementById('deleteAccountModal').classList.remove('hidden');
        }

        function hideDeleteAccountModal() {
            document.getElementById('deleteAccountModal').classList.add('hidden');
        }

        document.getElementById('editBalanceForm').addEventListener('submit', function(e) {
            hideEditBalanceModal();
        });

        document.getElementById('deleteAccountForm').addEventListener('submit', function(e) {
            hideDeleteAccountModal();
        });
    </script>
</body>
</html> 