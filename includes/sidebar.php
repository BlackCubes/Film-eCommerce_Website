<?php

# sidebar.php (File to show the Sidebar on Desktop or Mobile Responsive).
# Created on November 6, 2019.
# Created by Elias Gutierrez.

// ************************************************ //
// ************ DEPARTMENT NAME CHANGE ************ //

function departmentNameChange($department) {
    $name_change = '';
    if ($department === 'films') {
        $name_change = 'Movies';
    } else {
        $name_change = 'TV';
    }
    return $name_change;
}

// ************ DEPARTMENT NAME CHANGE ************ //
// ************************************************ //


// ***************************************** //
// ************ DESKTOP SIDEBAR ************ //

class sidebarFilter
{

    private $q, $r, $encryption;

    // FORMAT QUERY:
    public function formatConstruction($departmentURL, $database) {

        $this->q = "SELECT format FROM formats ORDER BY format";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Formats</b></p>';

        while ($format = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {
            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $format['format'] . '">' . $format['format'] . '</a></p>';
        }

        echo '</div>';

    }

    // GENRE QUERY:
    public function genreConstruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT g.id AS genre_id, g.genre AS genre FROM genres AS g JOIN products_genres AS pg ON g.id=pg.genre_id JOIN products AS p ON pg.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY g.genre LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Genres</b></p>';
        
        while ($genre = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {
            $this->encryption = urlencode(my_encrypt($genre['genre_id'], KEY));
            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=genre&name=' . $this->encryption . '">' . $genre['genre'] . '</a></p>';
        }

        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=genre">See more</a></div>';
        
    }

    // ACTOR QUERY:
    public function actorConstruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT a.id AS actor_id, a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY a.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Actors</b></p>';

        while ($actor = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($actor['actor_id'], KEY));
    
            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=actor&name=' . $this->encryption . '">' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '</a></p>';
        }

        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=actor">See more</a></div>';

    }

    // DIRECTOR QUERY:
    public function directorConstruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT dir.id AS director_id, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln FROM directors AS dir JOIN products_directors AS pdir ON dir.id=pdir.director_id JOIN products AS p ON pdir.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY dir.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Directors</b></p>';

        while ($director = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($director['director_id'], KEY));
    
            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=director&name=' . $this->encryption . '">' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '</a></p>';
        }

        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=director">See more</a></div>';

    }

    // WRITER QUERY:
    public function writerConstruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT w.id AS writer_id, w.first_name AS writer_fn, w.middle_name AS writer_mn, w.last_name AS writer_ln FROM writers AS w JOIN products_writers AS pw ON w.id=pw.writer_id JOIN products AS p ON pw.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY w.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Writers</b></p>';

        while ($writer = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($writer['writer_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=writer&name=' . $this->encryption . '">' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=writer">See more</a></div>';

    }

    // PRODUCER QUERY:
    public function producerConstruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT pro.id AS producer_id, pro.first_name AS producer_fn, pro.middle_name AS producer_mn, pro.last_name AS producer_ln FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY pro.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Producers</b></p>';

        while ($producer = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($producer['producer_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=producer&name=' . $this->encryption . '">' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=producer">See more</a></div>';

    }

    // CINEMATOGRAPHER QUERY:
    public function dpConstruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT dp.id AS dp_id, dp.first_name AS dp_fn, dp.middle_name AS dp_mn, dp.last_name AS dp_ln FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY dp.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Cinematographers</b></p>';

        while ($dp = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($dp['dp_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=dp&name=' . $this->encryption . '">' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=dp">See more</a></div>';

    }

    // STUDIO QUERY:
    public function studioContruction($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT stu.id AS studio_id, stu.studio_name AS studio_name FROM studios AS stu JOIN products_studios AS pstu ON stu.id=pstu.studio_id JOIN products AS p ON pstu.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY stu.studio_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        echo '<div class="results"><p><b>Studios</b></p>';

        while ($studio = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {
            $this->encryption = urlencode(my_encrypt($studio['studio_id'], KEY));
            echo '<p><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=studio&name=' . $this->encryption . '">' . $studio['studio_name'] . '</a></p>';
        }

        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=studio">See more</a></div>';

    }

}

// ************ DESKTOP SIDEBAR ************ //
// ***************************************** //


// **************************************** //
// ************ MOBILE SIDEBAR ************ //

class sidebarMobile
{

    private $q, $r, $encryption;

    // FORMAT QUERY:
    public function formatMobile($departmentURL, $database) {

        $this->q = "SELECT format FROM formats ORDER BY format";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($format = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {
            echo '<li class="post" data-category="Formats"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $format['format'] . '">' . $format['format'] . '</a></li>';
        }

    }

    // GENRE QUERY:
    public function genreMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT g.id AS genre_id, g.genre AS genre FROM genres AS g JOIN products_genres AS pg ON g.id=pg.genre_id JOIN products AS p ON pg.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY g.genre LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($genre = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {
            $this->encryption = urlencode(my_encrypt($genre['genre_id'], KEY));
            echo '<li class="post" data-category="Genres"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=genre&name=' . $this->encryption . '">' . $genre['genre'] . '</a></li>';
        }

        echo '<li class="post" data-category="Genres"><a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=genre">More Genres</a></li>';

    }

    // ACTOR QUERY:
    public function actorMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT a.id AS actor_id, a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY a.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($actor = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($actor['actor_id'], KEY));

            echo '<li class="post" data-category="Actors"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=actor&name=' . $this->encryption . '">' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '</a></li>';

        }

        echo '<li class="post" data-category="Actors"><a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=actor">More Actors</a></li>';

    }

    // DIRECTOR QUERY:
    public function directorMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT dir.id AS director_id, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln FROM directors AS dir JOIN products_directors AS pdir ON dir.id=pdir.director_id JOIN products AS p ON pdir.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY dir.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($director = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($director['director_id'], KEY));

            echo '<li class="post" data-category="Directors"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=director&name=' . $this->encryption . '">' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '</a></li>';

        }

        echo '<li class="post" data-category="Directors"><a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=director">More Directors</a></li>';

    }

    // WRITER QUERY:
    public function writerMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT w.id AS writer_id, w.first_name AS writer_fn, w.middle_name AS writer_mn, w.last_name AS writer_ln FROM writers AS w JOIN products_writers AS pw ON w.id=pw.writer_id JOIN products AS p ON pw.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY w.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($writer = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($writer['writer_id'], KEY));

            echo '<li class="post" data-category="Writers"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=writer&name=' . $this->encryption . '">' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '</a></li>';

        }

        echo '<li class="post" data-category="Writers"><a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=writer">More Writers</a></li>';

    }

    // PRODUCER QUERY:
    public function producerMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT pro.id AS producer_id, pro.first_name AS producer_fn, pro.middle_name AS producer_mn, pro.last_name AS producer_ln FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY pro.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($producer = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($producer['producer_id'], KEY));

            echo '<li class="post" data-category="Producers"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=producer&name=' . $this->encryption . '">' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '</a></li>';

        }

        echo '<li class="post" data-category="Producers"><a href="/FilmIndustry/eCommerce/producers/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=producer">More Producers</a></li>';

    }

    // CINEMATOGRAPHER QUERY:
    public function dpMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT dp.id AS dp_id, dp.first_name AS dp_fn, dp.middle_name AS dp_mn, dp.last_name AS dp_ln FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY dp.last_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($dp = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($dp['dp_id'], KEY));

            echo '<li class="post" data-category="Cinematographers"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=dp&name=' . $this->encryption . '">' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '</a></li>';
        }

        echo '<li class="post" data-category="Cinematographers"><a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=dp">More Cinematographers</a></li>';

    }

    // STUDIO QUERY:
    public function studioMobile($departmentURL, $departmentNameChange, $database, $formatJoin, $formatWhere, $formatURL) {

        $this->q = "SELECT DISTINCT stu.id AS studio_id, stu.studio_name AS studio_name FROM studios AS stu JOIN products_studios AS pstu ON stu.id=pstu.studio_id JOIN products AS p ON pstu.product_id=p.id JOIN departments AS d ON p.department_id=d.id $formatJoin WHERE d.department='{$departmentNameChange}' $formatWhere ORDER BY stu.studio_name LIMIT 5";
        $this->r = mysqli_query($database, $this->q) or trigger_error("Query: {$this->q}\n<br>MySQL Error: " . mysqli_error($database));

        while ($studio = mysqli_fetch_array($this->r, MYSQLI_ASSOC)) {

            $this->encryption = urlencode(my_encrypt($studio['studio_id'], KEY));

            echo '<li class="post" data-category="Studios"><a href="/FilmIndustry/eCommerce/' . $departmentURL . '/index.php?format=' . $formatURL . '&type=studio&name=' . $this->encryption . '">' . $studio['studio_name'] . '</a></li>';
            
        }

        echo '<li class="post" data-category="Studios"><a href="/FilmIndustry/eCommerce/products/other.php?department=' . $departmentNameChange . '&format=' . $formatURL . '&type=studio">More Studios</a></li>';

    }
    
}

// ************ MOBILE SIDEBAR ************ //
// **************************************** //
?>