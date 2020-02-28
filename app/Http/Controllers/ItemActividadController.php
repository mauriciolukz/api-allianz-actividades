<?php

namespace App\Http\Controllers;

use App\ItemActividad;
use Illuminate\Http\Request;

class ItemActividadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return response()->json([
            'ItemActividad' => ItemActividad::all()
        ]);
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
     * @param  \App\ItemActividad  $itemActividad
     * @return \Illuminate\Http\Response
     */
    public function show(ItemActividad $itemActividad)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ItemActividad  $itemActividad
     * @return \Illuminate\Http\Response
     */
    public function edit(ItemActividad $itemActividad)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ItemActividad  $itemActividad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ItemActividad $itemActividad)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ItemActividad  $itemActividad
     * @return \Illuminate\Http\Response
     */
    public function destroy(ItemActividad $itemActividad)
    {
        //
    }
}
