# määrame, kus on asumas fail, mille sees on kasutajate andmed
$fail = "C:\Users\mati\kasutajate_haldus\kasutajad.csv"
# loeme failist sisu, info jaotatakse ; järgi
$kasutajad = Import-Csv $fail -Encoding Default -Delimiter ";"
# failis iga kasutaja andmestik on eraldi reas
# vaatame faili sisu ridade kaupa
# selleks salevastame iga rida $kasutaja muutuja sisse
foreach ($kasutaja in $kasutajad)
{
    #kuna reas on mitu väärtust, siis iga element on kätte saadav veeru nimetuse järgi, mis me paneme
    # $muutuja.Veerunimetus kujul kirja
    $kasutajanimi = $kasutaja. kasutajanimi
    $taisnimi = $kasutaj. taisnimi
    $Kontokirjeldus = $kasutaja. Kontokirjeldus
    $Parool = $kasutaja. Parool | ConvertTo-SecureString -AsPlainText -Force
    # kaustades saadud info lisame kasutaja
    New-LocalUser -Name $kasutajanimi -Password $Parool -FullName "$taisnimi" -Description "$Kontokirjeldus"
    }