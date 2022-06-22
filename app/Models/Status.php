<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class Status extends Model
{
    const ACTIVE = 1;
    const PENDING = 2;
    const IN_ACTIVE = 0;
    const REJECTED = 98;
    const DELETED = 99;

    const LIST = [
        self::ACTIVE => 'active',
        self::PENDING => 'pending',
        self::IN_ACTIVE => 'inactive',
        self::REJECTED => 'rejected',
        self::DELETED => 'deleted'
    ];
}