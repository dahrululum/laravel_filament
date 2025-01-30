<?php

use App\Models\Partner;
use App\Models\Section;
use App\Models\Setting;

function get_setting_value($key){
    $data = Setting::where('key', $key)->first();
    if(isset($data->value) ){
        return $data->value;
    }else{
        return null;
    }
}
function get_section_data($key){
    $data = Section::where('post_as', $key)->first();
    if(isset($data) ){
        return $data;
    }else{
        return null;
    }
}

function get_partner(){
    $data = Partner::all();
    if(isset($data) ){
        return $data;
    }else{
        return null;
    }
}