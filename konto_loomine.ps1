# küsi kasutajalt ees- ja perenime
$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"

# kontrolli, kas sisestatud nimed sisaldavad ladina tähti
if ($eesnimi -match '^[a-zA-Z]+$' -and $perenimi -match '^[a-zA-Z]+$') {
# Loo kasutajanimi: eesnimi.perenimi
$kasutajanimi = "$eesnimi $perenimie"

# Loo täisnimi
$fullname = "$eesnimie $perenimi"

# Parool
$Parool = "Parool1!"

# Parooli teisendamine Securestringiks
$Secureparool = ConvertTo-SecureString $Parool -AsPlainText -Force

# Kasutaja loomine
try {
    #Loo lokaalne kasutaja süsteemis
    New-LocalUser -Name $kasutajanimi -FullName $fullname -Password $Secureparool

#Lisa kasutaja gruppi "users"
Add-LocalGroupMember -Group "Users" -Member $kasutajanimi

Write-host "Kasutaja $kasutajanimi on edukalt loodod."
} catch{
    Write-Host "Viga kasutaja loomisel: $_"
    }
} else {
    Write-host "Viga: Nimed võivad sisaldada ainult ladina tähti!"
}



# Kui nimi sisaldab mitte-ladina tähti, teavitab kasutajat ja lõpetab skripti
#if (-not $eesnimiValid) {
#Write-Host"Eesnimi sisaldab lubamatud tähemärke! Kasuta ainult ladina tähti."
#exit
#}

# Looge kasutajanimi ees- ja perenime järgi: ees.perenimi
#$Kasutajanimi = "$eesnimi.$perenimi"

# looge täisnimi ja kirjeldus
#$taisnimi = "$eesnimi.$perenimi"
#$kirjeldus = "Kasutaja: $eesnimi.$perenimi"

# Kuvage loodud kasutajanimi, täisnimi ja kirjeldus
#Write-Host "Kasutajanimi: $kasutajanim"
#Write-Host "Täisnimi: $taisnimi"
#Write-Host "kirjeldus: $kirjeldus"