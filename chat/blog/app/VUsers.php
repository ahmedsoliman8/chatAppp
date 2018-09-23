<?php

namespace App;

use Illuminate\Contracts\Validation\Rule;

class VUsers implements  Rule {

    public  function passes($attribute, $value)
    {
        // TODO: Implement passes() method.

        return $value >10;
    }

    public  function  message()
    {
        // TODO: Implement message() method.

        return ":attribute Please make sure that up enter number more than ten";
    }
}