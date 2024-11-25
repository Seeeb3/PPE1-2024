#!/usr/bin/env bash

FICHIER_URLS=$1

if [ ! $FICHIER_URLS ]
then
    echo "Merci d'indiquer un fichier d'URLs"
    exit
fi

INDEX=0
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "<title>Mini-projet</title>"
echo "<meta charset=\"utf-8\" />"
echo "<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css\">"
echo "</head>"
echo "<body>"

echo "<section class=\"section\" >"
echo "<div class=\"container is-max-desktop\" >"
echo "<div class=\"content\" >"
echo "<h2 class=\"title\" >Résultat du script</h2>"
echo "<table class=\"table\" >"

echo "<tr>" "<th>n°</th>" "<th>URL</th>" "<th>Code HTTP</th>" "<th>Encodage</th>" "<th>Nombre de mots</th>" "</tr>"

while read -r LIGNE_URL
do

    # Code HTTP
    CODE_HTTP=$(curl -s -I "$LIGNE_URL" | head -n 1 | cut -d ' ' -f 2)
    # Encodage
    ENCODAGE=$(curl -s -I "$LIGNE_URL" | egrep -i '^content-type:' | egrep 'charset=[[:alnum:]-]+' | cut -d '=' -f 2 | xargs)
    # Comptage des mots
    NOMBRE_MOTS=$(lynx -dump "$LIGNE_URL" | egrep "\b[[:alnum:]]+\b" -o | wc -l | xargs)

    echo "<tr>"
    echo "<td>" $INDEX "</td>"
    echo "<td>" $LIGNE_URL "</td>"
    echo "<td>" $CODE_HTTP "</td>"
    echo "<td>" $ENCODAGE "</td>"
    echo "<td>" $NOMBRE_MOTS "</td>"
    echo "</tr>"

    ((INDEX++))
done < $FICHIER_URLS

echo "</table>"
echo "</div>"
echo "</div>"
echo "</section>"
echo "</body>"
echo "</html>"
