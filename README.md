# Počítačová bezpečnost
Poznámky pro počítačovou bezpečnost.

Odkaz na podcast: [Darknet Diaries](https://darknetdiaries.com/)

Bonusové úkoly pro pokročilé:
- Darknet Diaries
- [tryhackme](https://tryhackme.com/)

Nedokumentované instrukce procesorů:
- [GOD MODE UNLOCKED - Hardware Backdoors in x86 CPUs](https://www.youtube.com/watch?v=_eSAF_qT_FY)

# Obsah
- [Počítačová bezpečnost](#počítačová-bezpečnost)
- [Obsah](#obsah)
  - [Úvod](#úvod)
  - [Hardware počítače](#hardware-počítače)
  - [Software počítače](#software-počítače)
    - [BIOS](#bios)
    - [Bootloader a bootování](#bootloader-a-bootování)
    - [OS](#os)
      - [Linux](#linux)
    - [Internet a síťová bezpečnost](#internet-a-síťová-bezpečnost)
  - [Kódování a Šifrování](#kódování-a-šifrování)
    - [Kódování](#kódování)
  - [Kibernetické útoky a jak se bránit](#kibernetické-útoky-a-jak-se-bránit)
    - [Zálohování](#zálohování)
  - [Otázky a odpovědi](#otázky-a-odpovědi)

## Úvod

původ slova Hacker
- jail breaking (air tag)

## Hardware počítače
Virtuální pamět
Překlad adres do paměti

Swap
## Software počítače
Operační systémy
BIOS
Seznámení se Linuxem
Příkazová řádka
Instalace aplikací

### BIOS

### Bootloader a bootování

bootování
hdd
cd
usb
network
vypnutý secureboot -> bootování z USB -> nezašifrovaný disk -> přístup ke všem datům bez potřeby znalosti jakéhokoliv hesla.

### OS
Historie OS
- příkazová řádka,
- příchod GUI

Proč je hlavní disk v počítači s OS windows C?
- A B byli historicky disketové mechaniky

Zastoupení OS na trhu:
- PC
- veškeré počítače včetně sítové infrastruktury a IOT

Embedded

#### Linux
Základní práce v Linuxu.
Linux je nejrozšířenějším OS na počítačových serverech. Jeho jádro se dá najít na největšíh superpočítačích světa. V síťove infrastruktuře OpenWRT. Na mobilních telefonech Android a v chromebookách. Jádru MacOS, ač historicky vzdáleně. Na jednodeskových počítačích RPi.
Jediná větší vyjímka kde není Linuxové jádro je OS Windows.
Proto učit se ovládaní tohoto systému a pomocí nástrojů příkazové řídky jistě není ztracený čas pro někoho kdo by se chtěl vydat cestou IT a počítačové bezpečnosti.


Instalace aplikací z ověřených zdrojů (repozitáře)
Virtualizace a technologie Docker.
Proč je Docker lepší než virtualizace?

### Internet a síťová bezpečnost
![[Internet a síťová bezpečnost]]


## Kódování a Šifrování


### Kódování

Kód, kódová abeceda, kódové slovo.

ASCII
Morseova abeceda

Caesarova šifra
Transpoziční šifra

Google colab - python, jupyter notebook
Lámaná transpoziční šifry.


## Kibernetické útoky a jak se bránit
útok na HW útok na SW
Chyby v procesorech

Jak se bránit při heckerském útoku?
- odcizení účtu - dvou faktorové ověření
- oddělené profily na počítači (rodiče, děti, práce,...)
- minimální oprávnění (děti nemají práva administrátora)
- ransomware - zálohy na externím disku

Gumové kachničky

### Zálohování
zálohování
321
RAID

## Otázky a odpovědi

Existuje neprolomitelné heslo?
NE - na windows lze heslo smazat pomocí chntpw
Lze ho ukrást přímo z databáze na straně serveru
útočník můuže heslo změnit bez vědomí vlastníka (reset hesla)

Je nějaký OS bezpečnější než jiný?
NE
Pokud není pravidelně aktualizovaný, každý OS má v sobě bezpečností chyby.
Existují viri pro každý OS, možná jich je pro OS win více, ale to není důvod aby člověk provozoval jakýkoliv jiný os bez antiviru (třeba dodávaného od výrobce OS).