<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <title>Document</title>
    <style>
        p , * { font-size: 1em; }
    </style>
</head>
<body>
    <div class="container-fluid">
    <h1>Products Api Application <sub><small>Lumen (5.6.3)</small></sub></h1>
        <div class="row">   
            <div class="col-lg-12">
                <table class="col-lg-12 table-striped table-bordered"> 
                    <thead>
                    
                        <tr>
                            <td>url</td>
                            <td>type</td>
                            <td>description</td>
                            <td>Parameters</td>
                            <td>Secure</td>
                            <td>example</td>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                    <td>GET</td>
                    </tr>
                        <tr>
                            <td>/api/products/</td>
                            <td>GET</td>
                            <td>List All Products</td>
                            <td> - </td>
                            <td> No </td>
                            <td>https://www.carrotapps.net/api/products/</td>
                        </tr>
                        <tr>
                            <td>/api/products/{id}</td>
                            <td>GET</td>
                            <td>Show Product Info With Attachments</td>
                            <td> - </td>
                            <td> No </td>
                            <td>https://www.carrotapps.net/api/products/40</td>
                        </tr>
                        <tr>
                            <td>/api/categories</td>
                            <td>GET</td>
                            <td>List All Categories</td>
                            <td> - </td>
                            <td> No </td>
                            <td>https://www.carrotapps.net/api/categories/</td>
                        </tr>
                        <tr>
                            <td>/api/categories/{id}</td>
                            <td>GET</td>
                            <td>List Products From This Category</td>
                            <td> - </td>
                            <td> No </td>
                            <td>https://www.carrotapps.net/api/categories/2</td>
                        </tr>
                        <tr>
                        <td>Post</td>
                        </tr>
                        <tr>
                            <td>/api/products</td>
                            <td>POST</td>
                            <td>Add New Product</td>
                            <td> 
                            <p> <h4> Post Data  :</h4>
                                name : string <br>
                                price : decimal<br>
                                code : string<br>
                                categories_id : integer<br>
                                Availability : Boolean<br>
                                images[] : File
                             </p>
                             <p> <h4>Header :</h4>
                            <b> Authorization </b> : Api_token ( db.users.api_token )
                             </p>
                            
                            </td>
                            <td> YES </td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>/api/products/{id}/update</td>
                            <td>POST</td>
                            <td>Update Product Price</td>
                            <td> 
                            <p> <h4> Post Data  :</h4>
                                
                                price : decimal
                                
                             </p>
                             <p> <h4>Header :</h4>
                            <b> Authorization </b> : Api_token ( db.users.api_token )
                             </p>
                            
                            </td>
                            <td> YES </td>
                            <td>-</td>
                        </tr>
                        <tr>
                        <td>Delete</td>
                        </tr>
                        <tr>
                            <td>/api/products/{id}</td>
                            <td>POST</td>
                            <td>Delete Product</td>
                            <td> 
                             <p> <h4>Header :</h4>
                            <b> Authorization </b> : Api_token ( db.users.api_token )
                             </p>
                            
                            </td>
                            <td> YES </td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
