<?php

namespace App\Models;
use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;
use Tymon\JWTAuth\Contracts\JWTSubject;
// use Illuminate\Database\Eloquent\Model;

class UserModel extends Model implements AuthenticatableContract, AuthorizableContract, JWTSubject
{
    use Authenticatable, Authorizable;
    /**
     * Database table name
     */
    protected $table      = "user";
    protected $primaryKey = "id_user";
    // protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "fullname",
        "email",
        "password",
        "id_struktur",
        "id_struktur_child1",
        "id_struktur_child2",
        "nomor_wa",
        "kop"
    ];

    /**
     * Date time columns.
     */
    protected $dates = [];
        /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
    ];

    protected $hidden = [
        'password',
    ];
         /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }
}
