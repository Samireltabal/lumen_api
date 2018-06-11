<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use App\Products;
use App\Categories;
use App\Attachments;

class ProductsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    
     public function __construct()
    {

    }
    /*
        List Products 
        Show Product ( Single Product )
        List Categories 
        Get Products By Category Id
    */
    public function listProducts() {
        $start = microtime(true);
        $products = Cache::remember('productlist', 10, function() {
            return Products::all();
        });
            $duration =( microtime(true) - $start ) * 1000 ;
            Log::info('Cache : ' . $duration . ' MS');
            return response()->json($products);
    }
    public function showProduct($id) {
        return response()->json( ['data' => Products::find($id) , 'attachments' => Products::find($id)->attachments]);
    }
    public function listCategories() {
        return response()->json(Categories::all());
    }
    public function categoryProduct($id) {
        $category = Categories::find($id);
        return response()->json($category->products);
    }

    // Insert Product in Database

    public function create(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'price' => 'required',
            'categories_id' => 'required',
            'code' => 'required',
            'availability' => 'required',
            'images[]' => 'image|nullable|max:1999'
        ]);
            // Insert Product DB.Products
        $product = new Products;
        $product->name = $request->input('name');
        $product->price = $request->input('price');
        $product->categories_id = $request->input('categories_id');
        $product->availability = $request->input('availability');
        $product->code = $request->input('code');
        $product->save();
            // Uploads Handling 
        $files = $request->file('images');

        foreach ($files as $file) {
            $fileNameWithExt = $file->getClientOriginalName();
            $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extention = $file->getClientOriginalExtension();
            $FileNameToStore = $filename.'_'.time().'.'.$extention;
            $destinationPath ="uploads";
            $file->move($destinationPath, $FileNameToStore);

            $attachments = new Attachments;
            $attachments->file_name = $FileNameToStore;
            $attachments->products_id = $product->id;
            $attachments->save();
        }
            // Response
        return response('Product Added Successfully', 200);
        }

        // DELETE PRODUCT BY ID

        public function delete($id) {
            $product = Products::find($id);
            $attachments = $product->attachments;
            foreach ($attachments as $attachment) {
                $attachment->delete();
            }
            $product->delete();
            
            return response('Product Removed Successfully',200);
        }


        // UPDATE Product 

        public function update($id ,Request $request)    {
        $this->validate($request, [
            'price' => 'required'
        ]);
            // Insert Product DB.Products
        
        $product = Products::findOrFail($id);
        $product->update($request->all());
        //$product->save();
           
          // Response
        return response('Product Updated Successfully', 200);
        }
}
