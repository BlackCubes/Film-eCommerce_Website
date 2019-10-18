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

// ************************************************ //
// ************ NON-ACCOUNT BREADCRUMB ************ //

class breadcrumb
{
    private $breadcrumb;

    private $separator = ' | ';

    private $domain = 'http://localhost:8080/FilmIndustry/eCommerce';

    public function build($array)
    {
        $breadcrumbs = array_merge(array('Home' => 'index.php'), $array);

        $count = 0;

        foreach($breadcrumbs as $title => $link) {

            if (empty($link)) {

                $this->breadcrumb .= '<span itemscope="" itemtype="https://schema.org/breadcrumb"><span class="main-location" itemprop="title">' . $title . '</span></span></span>';

            } else {

                $this->breadcrumb .= '<span itemscope="" itemtype="https://schema.org/breadcrumb"><a href="' . $this->domain . '/' . $link . '" itemprop="url"><span itemprop="title">' . $title . '</span></a></span>';

            }

            $count++;

            if ($count !== count($breadcrumbs)) {
                $this->breadcrumb .= $this->separator;
            }
        }
        return $this->breadcrumb;
    }
}

// ************ NON-ACCOUNT BREADCRUMB ************ //
// ************************************************ //


// ************ ACCOUNT BREADCRUMB ************ //
// ******************************************** //

class account_breadcrumb
{
    private $breadcrumb;

    private $separator = ' | ';

    private $domain = 'http://localhost/FilmIndustry/eCommerce/account';

    public function build($array)
    {
        $breadcrumbs = array_merge(array('Account' => 'profile.php'), $array);

        $count = 0;

        foreach($breadcrumbs as $title => $link) {

            if (empty($link)) {

                $this->breadcrumb .= '<span itemscope="" itemtype="https://schema.org/breadcrumb"><span class="main-location" itemprop="title">' . $title . '</span></span></span>';

            } else {

                $this->breadcrumb .= '<span itemscope="" itemtype="https://schema.org/breadcrumb"><a href="' . $this->domain . '/' . $link . '" itemprop="url"><span itemprop="title">' . $title . '</span></a></span>';

            }

            $count++;

            if ($count !== count($breadcrumbs)) {
                $this->breadcrumb .= $this->separator;
            }
        }
        return $this->breadcrumb;
    }
}

// ************ ACCOUNT BREADCRUMB ************ //
// ******************************************** //

?>