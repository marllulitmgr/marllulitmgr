# Caso de Prueba del sistema Home Banking Web Application 	 v3.0

## Plan de Prueba de Referencia: Plantilla de Test Cases -v 3.0


## # 1. Autenticación: Inicio de Sesión Exitoso

#loguin
Feature: Autenticación de Usuario
  Como usuario registrado del Home Banking
  Quiero ingresar con mis credenciales
  Para gestionar mis finanzas personales

  Scenario: Inicio de sesión exitoso con credenciales válidas
    Given que el usuario se encuentra en la página de inicio de sesión
    And el almacenamiento local (localStorage) está limpio
    When ingresa el usuario "demo"
    And la contraseña "demo123"
    And hace clic en el botón "INGRESAR"
    Then el sistema debe redirigirlo al Dashboard principal
    And el localStorage debe contener un token de sesión válido
    And el botón "Salir" debe estar visible en la barra de navegación



## 2. Transferencias: Validación de Límite de Monto

#Transferencia

Feature: Gestión de Transferencias
  Como usuario con saldo disponible
  Quiero realizar transferencias entre mis cuentas
  Para movilizar mis fondos

cenario: Intento de transferencia que excede el límite permitido
    Given que el usuario ha iniciado sesión correctamente
    And se encuentra en el módulo de "Transferencias"
    And selecciona una "Cuenta Origen" con saldo suficiente
    When intenta transferir un monto de "50001"
    And confirma la operación en la pantalla de validación
    Then el sistema debe mostrar el mensaje de error "El monto máximo por transferencia es de $50.000"
    And la transacción no debe ejecutarse en la base de datos (mock)



## 3. UI/UX: Visualización en Dispositivos Móviles


#accesibilidad #UI #UX

Feature: Interfaz de Usuario Responsiva
  Como usuario que utiliza dispositivos móviles
  Quiero que la interfaz se adapte correctamente a mi pantalla
  Para poder operar sin dificultades visuales

Scenario: Verificación de prioridad del login en vista móvil
    Given que el usuario accede desde un dispositivo móvil (ancho < 480px)
    When carga la página inicial del Home Banking
    Then el formulario de inicio de sesión debe aparecer en la parte superior
    And el panel de "Documentación" no debe obstruir la vista del login
    # Status: FAIL - Se detectó que el panel de documentación se superpone.


## 4. Bug Crítico: Persistencia tras F5 (Refresco)

#transferencia #Dasboard #logout

Feature: Persistencia de Datos y Sesión
  Como usuario que realiza múltiples transacciones
  Quiero que mi historial se mantenga visible durante toda la sesión
  Para tener control de mis movimientos diarios

Scenario: Persistencia de historial tras error de validación y refresco de página
    Given que el usuario ha realizado 3 transferencias exitosas
    And el historial muestra los 3 movimientos correctamente
    And el usuario intenta una transferencia que dispara el error de "Límite excedido"
    When el usuario presiona la tecla de refresco "F5"
    Then la sesión del usuario debe permanecer activa
    And el historial de transferencias debe seguir mostrando los 3 movimientos previos
    # Status: FAIL - El sistema realiza un logout forzado y limpia el historial.