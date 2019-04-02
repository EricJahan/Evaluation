<!DOCTYPE html>
<html>
    <head>
        <title>Mediathèque</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- NavBar -->
        <?php include 'incPHP/navbar.php'; ?>
        <!-- /NavBar -->

        <!-- Content -->
        <main>
            <!-- Choix Catégories -->
            <section class="contentMenu">Catégories :
                <ul>
                    <li><a href="#">Educatif</a></li>
                    <li><a href="#">Bandes-Dessinées</a></li>
                    <li><a href="#">Adult</a></li>
                </ul>
            </section>
            <!-- View Objets -->
            <section class="contentObjects">
                <div class="oneObject">
                    <h3>Un Livre</h3>
                    <img src="img/martine.jpg" alt=""/>
                    <p>Synopsis : Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Donec magna enim, pellentesque ornare maximus vitae, 
                        vulputate et turpis. 
                        Nam eu commodo nisl, nec elementum metus. 
                        Nullam quis dui commodo, volutpat tortor quis, 
                        accumsan nisl.</p>
                </div>
                <div class="oneObject">
                    <h3>Un autre Livre</h3>
                    <img src="img/hp.jpg" alt=""/>
                    <p>Synopsis : Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Donec magna enim, pellentesque ornare maximus vitae, 
                        vulputate et turpis. 
                        Nam eu commodo nisl, nec elementum metus. 
                        Nullam quis dui commodo, volutpat tortor quis, 
                        accumsan nisl.</p>
                </div>
                <div class="oneObject">
                    <h3>Encore un autre Livre</h3>
                    <img src="img/hp.jpg" alt=""/>
                    <p>Synopsis : Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Donec magna enim, pellentesque ornare maximus vitae, 
                        vulputate et turpis. 
                        Nam eu commodo nisl, nec elementum metus. 
                        Nullam quis dui commodo, volutpat tortor quis, 
                        accumsan nisl.</p>
                </div>
            </section>
        </main>
        <!-- /Content -->

        <!-- Footer -->
        <?php include 'incPHP/footer.php'; ?>
        <!-- /Footer -->

    </body>
</html>
