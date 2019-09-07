<?php

# breadcrumb.php (File to handle the Breadcrumbs).
# Created on September 6, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

class breadcrumb
{
    private $breadcrumb;

    private $separator = ' | ';

    private $domain = 'http://localhost/FilmIndustry/eCommerce';

    public function build($array)
    {
        $breadcrumbs = array_merge(array('Home' => 'index.php'), $array);

        $count = 0;

        foreach($breadcrumbs as $title => $link) {

            $this->breadcrumb .= '<span itemscope="" itemtype="https://schema.org/breadcrumb"><a href="' . $this->domain . '/' . $link . '" itemprop="url"><span itemprop="title">' . $title . '</span></a></span>';

            $count++;

            if ($count !== count($breadcrumbs)) {
                $this->breadcrumb .= $this->separator;
            }
        }
        return $this->breadcrumb;
    }
}

?>