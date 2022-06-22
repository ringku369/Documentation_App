<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{

    use HasFactory;
    public $timestamps = true;
    protected $guarded = ['id'];

    public function permissions() {
       return $this->belongsToMany(Permission::class,'roles_permissions');
    }


    public static function roleHasGrantPermissions($role_id, $group_parent_name){
      
        $permission = Permission::with('roles')->whereHas('roles', function ($query) use ($role_id) {
                        $query->where(['id' => $role_id]);
                    })->where(['group_parent_name'=>$group_parent_name])->count();
        return $retVal = ($permission > 0) ? true : false;
    }


    public static function roleHasParentPermissions($role_id, $group_name){
      
        $permission = Permission::with('roles')->whereHas('roles', function ($query) use ($role_id) {
                        $query->where(['id' => $role_id]);
                    })->where(['group_name'=>$group_name])->count();
        return $retVal = ($permission > 0) ? true : false;
    }
  
    public static function roleHasChildPermissions($role_id, $group_name, $name){
        
        $permission = Permission::with('roles')->whereHas('roles', function ($query) use ($role_id) {
                      $query->where(['id' => $role_id]);
                  })->where(['group_name'=>$group_name, 'name'=>$name])->count();
        return $retVal = ($permission > 0) ? true : false;
    }
}
