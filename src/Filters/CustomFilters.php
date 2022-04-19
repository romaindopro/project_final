<?php 
// src/TwigExtension/customFilters.php 
 
namespace App\Filters; 
use Twig\Extension\AbstractExtension;
use Twig\TwigFilter; 
 
class CustomFilters extends AbstractExtension { 
 
    public function getFilters() { 
    return [
            new TwigFilter('print_short_text', [$this, 'print_short_text']),
            new TwigFilter('smart_short_txt', [$this, 'smart_short_text'])
        ];
    }
 
    public function print_short_text($input)
    {
        
        return substr($input, 0, 1000)."........";
    }
 
    public function smart_short_text($input)
    {

        $result = substr($input, 0, (600 - 3));
        
        return preg_replace('/ [^ ]*$/', ' ...', $result);
    }
 
}