<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Home Decor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        header {
            background: #c6afc9;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
        }

        main {
            padding: 20px;
        }

        h2 {
            color: #35424a;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .product {
            background: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 5px;
            margin: 10px;
            padding: 15px;
            text-align: center;
            width: calc(33% - 40px);
        }

        .product img {
            max-width: 100%;
            height: auto;
        }

        .add-to-cart-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-to-cart-btn:hover {
            background-color: #45a049;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background: #c6afc9;
            color: #ffffff;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        @media (max-width: 768px) {
            .product {
                width: calc(50% - 40px);
            }
        }

        @media (max-width: 480px) {
            .product {
                width: calc(100% - 40px);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to Online Home Decor</h1>
        </header>

        <main>
            <h2>Available Products</h2>
            <div class="product-list">
                <div class="product">
                    <h3>Sofa</h3>
                    <img src="https://via.placeholder.com/150" alt="Sofa">
                    <p>Price: RS-30,000</p>
                    <button class="add-to-cart-btn" onclick="addToCart(30000)">Add to Cart</button>
                </div>
                <div class="product">
                    <h3>Chair</h3>
                    <img src="https://via.placeholder.com/150" alt="Chair">
                    <p>Price: RS-5,000</p>
                    <button class="add-to-cart-btn" onclick="addToCart(5000)">Add to Cart</button>
                </div>
                <div class="product">
                    <h3>Table</h3>
                    <img src="https://via.placeholder.com/150" alt="Table">
                    <p>Price: RS-10,000</p>
                    <button class="add-to-cart-btn" onclick="addToCart(10000)">Add to Cart</button>
                </div>
                <div class="product">
                    <h3>Pot</h3>
                    <img src="https://via.placeholder.com/150" alt="Pot">
                    <p>Price: RS-1,500</p>
                    <button class="add-to-cart-btn" onclick="addToCart(1500)">Add to Cart</button>
                </div>
                <div class="product">
                    <h3>Curtains</h3>
                    <img src="https://via.placeholder.com/150" alt="Curtains">
                    <p>Price: RS-2,500</p>
                    <button class="add-to-cart-btn" onclick="addToCart(2500)">Add to Cart</button>
                </div>
                <div class="product">
                    <h