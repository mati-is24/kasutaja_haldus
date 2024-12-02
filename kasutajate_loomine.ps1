$KasutajaParool = ConvertTo-SecureString "qwerty" -AsPlainText -Force

New-LocalUser "Kasutaja1" -Password $KasutajaParool -FullName "Esimene kasutaja" -Description "Local Account - kasutaja1"