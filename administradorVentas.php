<?php
session_start();
require 'conexion_bd.php';

try {
    // Consulta para obtener los 10 productos más vendidos
    $sql = "SELECT productos.nombre_producto AS producto_nombre, SUM(compras_productos.cantidad) AS total_vendido
            FROM compras_productos
            JOIN productos ON compras_productos.id_producto = productos.id_producto
            GROUP BY compras_productos.id_producto
            ORDER BY total_vendido DESC
            LIMIT 10";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $resultado = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch (PDOException $e) {
    die('Error en la base de datos: ' . $e->getMessage());
} finally {
    // Cerrar la conexión a la base de datos en el bloque finally
    $conn = null;
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Decofruta Administrador</title>
    <link rel="shortcut icon" type="image" href="./image/logoAdmin.png">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <!-- Header -->
    <?php include 'administradorHeader.php'; ?>

    <body>
        <div class="container mt-5">
            <h2 class="mb-4 text-center">Top 10 productos más vendidos</h2>
            <div class="chart-container" style="position: relative; height:55vh; width:80vw">
                <canvas id="productosChart"></canvas>
            </div>
        </div>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const ctx = document.getElementById('productosChart').getContext('2d');
                const productos = <?php echo json_encode(array_column($resultado, 'producto_nombre')); ?>;
                const cantidades = <?php echo json_encode(array_column($resultado, 'total_vendido')); ?>;
                const productosChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: productos,
                        datasets: [{
                            label: 'Cantidad Visitas',
                            data: cantidades,
                            backgroundColor: 'rgba(209, 160, 55, 0.7)',
                            borderColor: 'rgba(209, 160, 55, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,//para permitir cambios en la escala del gráfico.
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            });
        </script>
    </body>

    <!-- FOOTER -->
    <?php include 'footer.php'; ?>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</body>

</html>