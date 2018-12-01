<?php
require_once 'config.php';

class Product
{
    public $Id;
    public $Name;
    public $Price;
    public $Category;
    public $ImageUrl;
}

try {
    $connection = new PDO("mysql:host=$DB_HOST;dbname=$DB_NAME", $DB_USER, $DB_PASSWORD);
} catch (PDOException $e) {
    die("Unable to connect to database $DB_NAME at $DB_HOST\n" . $e->getMessage());
}

$sql = 'SELECT *
        FROM Products';
$products = $connection->query($sql);

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Shopp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
</head>
<body>
    <h1>Products</h1>
    <table>
        <thead>
            <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Category</th>
            <th>Image</th>
        <thead>
        <tbody>
                <?php while ($product = $products->fetchObject('Product')) {
                    echo '<tr>';
                    echo '<td> ' . $product->Name . '</td>';
                    echo '<td> ' . $product->Price . '</td>';
                    echo '<td> ' . $product->Category . '</td>';
                    echo '<td> <img src="' . $product->ImageUrl . '&sig=' . $product->Id . '"/></td>';
                    echo '</tr>';
                }
                ?>
        </tbody>
    </table>
</body>
</html>