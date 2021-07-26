<?php
    $conexao = mysqli_connect('localhost', 'root', '', 'pp'); // acessando ao banco
    if (!$conexao) { // Checando a conexão
        die("Connection failed: " . mysqli_connect_error());
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/slick.css">
    <link rel="stylesheet" href="css/jogos.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <title>Jogos que Ensinam</title>
</head>

<body>
    <header class="full">
        <main>
            <div id="header-1">
                <h1>Jogos que Ensinam</h1>
            </div>
            <div id="redes-sociais">
                <ul>
                    <li><a href="https://pt-br.facebook.com/" target="_blank">F</a></li>
                    <li><a href="https://www.instagram.com/" target="_blank">I</a></li>
                    <li><a href="http://twitter.com/" target="_blank">T</a></li>
                    <li><a href="https://www.google.com/gmail/" target="_blank">E</a></li>
                </ul>
            </div>
        </main>
    </header>

    <div class="full">
        <main>
            <h1>Jogos recomendados</h1>
            <?php
            if (isset($_POST['enviar'])) {
                $chave = array_keys($_POST);
                $valores = array_values($_POST);
                array_pop($chave);
                $sql = "SELECT nome, descricao FROM jogos where (caracteristica like '%$chave[0]%' && nivel like '%$valores[0]%') || (caracteristica like '%$chave[1]%' && nivel like '%$valores[1]%') || (caracteristica like '%$chave[2]%' && nivel like '%$valores[2]%') || (caracteristica like '%$chave[3]%' && nivel like '%$valores[3]%' ) || (caracteristica like '%$chave[4]%' && nivel like '%$valores[4]%')";
                $resultado = mysqli_query($conexao, $sql);
                
                if (mysqli_num_rows($resultado) > 0) {
                    while ($linha = mysqli_fetch_assoc($resultado)) {
                        echo "<div class='jogos'><h2>".$linha["nome"]."</h2><p>".$linha["descricao"]."</p></div>";
                    }
                } else {
                    echo "<p>Não temos recomendações para a situação.</p>";
                }
            }
        ?>
        </main>
    </div>

    <footer class="full">
        <div id="footer-1">
            <main>
                <div id="atribuicoes">
                    <h2>Atribuições</h2>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/34879918@N04/27735788142" target="_blank">"cubo magico -
                            carol vidal"</a><span> by <a href="https://www.flickr.com/photos/34879918@N04"
                                target="_blank">Sesc em São
                                Paulo</a></span> is licensed under <a
                            href="https://creativecommons.org/licenses/by-nc-nd/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC
                            BY-NC-ND 2.0</a>
                    </p>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/7776449@N06/8479297425" target="_blank">"Mancala /
                            Awale"</a><span> by <a href="https://www.flickr.com/photos/7776449@N06"
                                target="_blank">elPadawan</a></span>
                        is licensed under <a
                            href="https://creativecommons.org/licenses/by-sa/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC
                            BY-SA 2.0</a>
                    </p>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/47247806@N00/8275567880" target="_blank">"Lego
                            10222"</a><span>
                            by <a href="https://www.flickr.com/photos/47247806@N00"
                                target="_blank">kebnekaise</a></span> is
                        licensed under <a
                            href="https://creativecommons.org/licenses/by-nc-sa/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC
                            BY-NC-SA 2.0</a>
                    </p>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/16481684@N00/3060070482" target="_blank">"Sudoku Jigsaw
                            Puzzle"</a><span> by <a href="https://www.flickr.com/photos/16481684@N00"
                                target="_blank">r.j.wagner</a></span>
                        is licensed under <a href="https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC BY
                            2.0</a>
                    </p>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/87857621@N00/3953861947"
                            target="_blank">"Origami"</a><span>
                            by <a href="https://www.flickr.com/photos/87857621@N00" target="_blank">caribb</a></span> is
                        licensed under <a
                            href="https://creativecommons.org/licenses/by-nc-nd/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC
                            BY-NC-ND 2.0</a>
                    </p>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/13602072@N03/16801949774" target="_blank">"Ratos vs.
                            aranha"</a><span> by <a href="https://www.flickr.com/photos/13602072@N03"
                                target="_blank">FaruSantos</a></span>
                        is licensed under <a
                            href="https://creativecommons.org/licenses/by-sa/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC
                            BY-SA 2.0</a>
                    </p>

                    <p style="font-size: 0.9rem;font-style: italic;">
                        <a href="https://www.flickr.com/photos/58578311@N00/459165342" target="_blank">"workshop
                            Penamacor
                            Bonecos de
                            Pano"</a><span> by <a href="https://www.flickr.com/photos/58578311@N00"
                                target="_blank">hobby-ir</a></span>
                        is licensed under <a
                            href="https://creativecommons.org/licenses/by-nd/2.0/?ref=ccsearch&atype=html"
                            target="_blank" style="margin-right: 5px;">CC
                            BY-ND 2.0</a>
                    </p>
                </div>
            </main>
        </div>
        <div id="footer-2">
            <main>
                <h1>Jogos que Ensinam</h1>
                <div id="redes-sociais">
                    <ul>
                        <li><a href="https://pt-br.facebook.com/" target="_blank">F</a></li>
                        <li><a href="https://www.instagram.com/" target="_blank">I</a></li>
                        <li><a href="http://twitter.com/" target="_blank">T</a></li>
                        <li><a href="https://www.google.com/gmail/" target="_blank">E</a></li>
                    </ul>
                </div>
            </main>
        </div>
    </footer>

    <script type="text/javascript" src="./js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="./js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="./js/slick.min.js"></script>
    <script type="text/javascript" src="./js/main.js"></script>
</body>

</html>
