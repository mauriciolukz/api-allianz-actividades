<?php

namespace App\Http\Controllers;

use App\GeneralidadItems;
use Illuminate\Http\Request;

class GeneralidadItemsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return GeneralidadItems::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\GeneralidadItems  $generalidadItems
     * @return \Illuminate\Http\Response
     */
    public function show(GeneralidadItems $generalidadItems)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GeneralidadItems  $generalidadItems
     * @return \Illuminate\Http\Response
     */
    public function edit(GeneralidadItems $generalidadItems)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GeneralidadItems  $generalidadItems
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GeneralidadItems $generalidadItems)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GeneralidadItems  $generalidadItems
     * @return \Illuminate\Http\Response
     */
    public function destroy(GeneralidadItems $generalidadItems)
    {
        //
    }

    public function generalidadItemsById($id_item_actividad)
    {
    
       return response()->json([
            'Generalidades_items' => GeneralidadItems::where('generalidades_items.Id_item_actividad', $id_item_actividad)->get(),
        ]);

    }
}
