<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use App\Models\Admin;
use Illuminate\Support\Facades\DB;


class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //insert roles_permissions (role_id,permission_id) values (4, 8), (4, 9), (4, 16);
        //Role::truncate();
        //Permission::truncate();
        DB::table('roles_permissions')->truncate();
        // Create Roles
        $roleSuperAdmin = Role::create(['name' => 'superadmin','guard_name'=>'admin']);
        $roleAdmin = Role::create(['name' => 'admin','guard_name'=>'admin']);
        $roleUser = Role::create(['name' => 'user','guard_name'=>'admin']);

        
        // Permission List as array
        $permissions = [

            
            [
                'group_parent_name' => 'role-permissions',
                'group_name' => 'role',
                'permissions' => [
                    'role.create',
                    'role.read',
                    'role.update',
                    'role.delete',
                    'role.permission.update',
                ]
            ],
            [
                'group_parent_name' => 'role-permissions',
                'group_name' => 'site_setting',
                'permissions' => [
                    'site_setting.create',
                    'site_setting.read',
                    'site_setting.update',
                    'site_setting.delete'
                ]
            ],
            // [
            //     'group_parent_name' => 'role-permissions',
            //     'group_name' => 'user',
            //     'permissions' => [
            //         'user.create',
            //         'user.read',
            //         'user.update',
            //         'user.delete'
            //     ]
            // ],
            // [
            //     'group_parent_name' => 'dashboards',
            //     'group_name' => 'dashboard',
            //     'permissions' => [
            //         'dashboard.read'
            //     ]
            // ],
            
            // [
            //     'group_parent_name' => 'pages',
            //     'group_name' => 'partner',
            //     'permissions' => [
            //         'partner.create',
            //         'partner.read',
            //         'partner.update',
            //         'partner.delete'
            //     ]
            // ],
            
            // [
            //     'group_parent_name' => 'pages',
            //     'group_name' => 'contact',
            //     'permissions' => [
            //         'contact.create',
            //         'contact.read',
            //         'contact.update',
            //         'contact.delete'
            //     ]
            // ],
            
            // [
            //     'group_parent_name' => 'pages',
            //     'group_name' => 'banner',
            //     'permissions' => [
            //         'banner.create',
            //         'banner.read',
            //         'banner.update',
            //         'banner.delete'
            //     ]
            // ],

            [
                'group_parent_name' => 'pages',
                'group_name' => 'version',
                'permissions' => [
                    'version.create',
                    'version.read',
                    'version.update',
                    'version.delete'
                ]
            ],

            [
                'group_parent_name' => 'pages',
                'group_name' => 'content_category',
                'permissions' => [
                    'content_category.create',
                    'content_category.read',
                    'content_category.update',
                    'content_category.delete'
                ]
            ],

            [
                'group_parent_name' => 'pages',
                'group_name' => 'content',
                'permissions' => [
                    'content.create',
                    'content.read',
                    'content.update',
                    'content.delete'
                ]
            ],
        
            

        ];


        // Create and Assign Permissions
        for ($i = 0; $i < count($permissions); $i++) {
            $permissionParentGroup = $permissions[$i]['group_parent_name'];
            $permissionGroup = $permissions[$i]['group_name'];
            for ($j = 0; $j < count($permissions[$i]['permissions']); $j++) {
                $permission = Permission::create(['name' => $permissions[$i]['permissions'][$j], 'group_parent_name' => $permissionParentGroup, 'group_name' => $permissionGroup, 'guard_name'=>'admin']);
            }
        }

        $roles_permission_data = [
            //['role_id'=>1,'permission_id'=>1],
            //['role_id'=>1,'permission_id'=>2],
            //['role_id'=>1,'permission_id'=>3],
            //['role_id'=>1,'permission_id'=>4],
            //['role_id'=>1,'permission_id'=>5],
            ['role_id'=>1,'permission_id'=>7],
            ['role_id'=>1,'permission_id'=>8],
            //['role_id'=>1,'permission_id'=>9],
            ['role_id'=>1,'permission_id'=>10],
            ['role_id'=>1,'permission_id'=>11],
            ['role_id'=>1,'permission_id'=>12],
            ['role_id'=>1,'permission_id'=>13],
            ['role_id'=>1,'permission_id'=>14],
            ['role_id'=>1,'permission_id'=>15],
            ['role_id'=>1,'permission_id'=>16],
            ['role_id'=>1,'permission_id'=>17],
            ['role_id'=>1,'permission_id'=>18],
            ['role_id'=>1,'permission_id'=>19],
            ['role_id'=>1,'permission_id'=>20],
            ['role_id'=>1,'permission_id'=>21],
        ];
        DB::table('roles_permissions')->insert($roles_permission_data);
    }
}

