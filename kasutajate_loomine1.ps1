# kontrollime edastatud parameetrite arv
if($args.count -ne 3){
    #kui edastatud parameetrite arv ei ole 3
    #siis trükime kasutusjuhend
    echo '.\skriptinimi kasutajanimi' "Ees Perenimi" "Konto kirjeldus"
} else {
# defineerime muutujad argumentide andmete salvestamiseks
$Kasutajanimi = $args[0]
$taisnimi = $args[1]
$Kontokirjeldus = $args[2]
# loome kasutajale parooli
$KasutajaParool = ConvertTo-SecureString -String "qwerty" -AsPlainText -Force
#lisame kasutaja vastavate andmetega
New-LocalUser $Kasutajanimi -Password $KasutajaParool -FullName "$taisnimi" -Description "$Kontokirjeldus"
}