<?php

require_once __DIR__ . '/vendor/autoload.php'; // Asegúrate de que esta ruta es correcta

// Cargar las variables del archivo .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// Obtener las variables de entorno
$server = $_ENV['DB_SERVER'];
$username = $_ENV['DB_USERNAME'];
$password = $_ENV['DB_PASSWORD'];
$database = $_ENV['DB_DATABASE'];

try {
    // Crear conexión PDO
    $conn = new PDO("mysql:host=$server;dbname=$database;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('La conexión falló: ' . $e->getMessage());
}

?>
