# Cvičení

- [Cvičení](#cvičení)
  - [Správce úloh](#správce-úloh)
  - [Soubory](#soubory)
  - [Virtualizace](#virtualizace)
    - [Tvorba záloh obrazu disku](#tvorba-záloh-obrazu-disku)
  - [OS Linux](#os-linux)
  - [šifrování disku](#šifrování-disku)
  - [Vzdálený přístup do počítače](#vzdálený-přístup-do-počítače)
  - [Port forwarding](#port-forwarding)
  - [Nastavování portů na Linuxu](#nastavování-portů-na-linuxu)

Administrátorské práva na svém počítači. 

Každou vypracovanou úlohu odevzdávají ve formě referátu. 
Například vyplněný jupyter notebook.

- úkoly typu spuštění příkazu
- otevřená otázka ".md"
- abc v Buzzu

Jeden Jupyter notebook na lekci nebo na modul?


## Správce úloh

Jaké úlohy se spouští po spuštění počítače?
- znáš dodavatele těchto programů?
- NE?
   - Pokud vypadají podezřele, tak znalý systémový administrátor by je buď zakázal, nebo hledal aplikaci kterou spouští a tu odinstaloval. 
(Ty to na svém počítači nedělej, některý software, který vypadá podezřele může být klíčovou součástí ovladačů HW tvého počítače a mohl by ti pak přestat fungovat)



Proč je počítač pomalý?

Otevři správce úloh:
co máš ve svém počítači za komponenty?
GPU
VRAM
RAM
Velikost disku
- technologie
Máš dostatek volného místa na disku?

Stav tvého disku?

## Soubory
Jaký mají typ. 

Vem na sebe roli forenzního specialisty. Tady jsou soubory a tvým úkolem je provést jejich analýzu pomocí HEX dump aplikace:
- word vs odt vs txt vs md
- xls vs csv
- BMP vs JPEG
- mp3 vs midi
Soubor se zmeněnou příponou. 
- kotatka.jpg.bat

koťátka.jpg.exe
s ikonou koťátek

binární vs plain text (ascii)
Dovedeš říci zda je soubor tím za koho se vydává?

Otevři/spušt soubor kotátka (nebo je bezpečný). Co se stalo? Co jsi čeka že by se mělo stát? Co by čekala tvoje babička?

## Virtualizace

Virtual box

Instalace operačního systému ve virtual boxu. 

Možnost konfigurace OS ve virtuálce, takže když se věci rozbijou tak je možné se snadno vrátit zpět. 

### Tvorba záloh obrazu disku

Vytvoř zálohu obrazu disku virtuálního stroje.

1. Zničíme virtuální stroj.
```bash
sudo rm -rf .
```

2. Obnovíme ho ze zálohy.

## OS Linux
Práce v příkazové řádce.

Základní příkazy pro práci se soubory, instalaci software, ...

```bash
whoami
pwd
ls
cd
cat
grep
cp
mv
rm
mkdir
rmdir
apt-get update
apt-get upgrade
apt install
```

balíčky:
```
cmatrix
cowsay
cbonsai
time
```

## šifrování disku
Mohu šifrovat virtuální disky? 

Tvorba šifrované zprávy za pomocí gpg, rsa, openssl.

Nástroje podpisů emailu?

Kontrola certifikátů na webových stránkách. 

## Vzdálený přístup do počítače

Nastavení vzdáleného přístupu přes SSH, VNC. V lokální síti a vzdáleně (například přes mobil).

## Port forwarding

Například přesměrování portu z virtuálního stroje do hostitelského počítače. Bude tak možné přistupovat na jupyter notebook běžící ve virtuálním stroji z hostitelského počítače.

## Nastavování portů na Linuxu

Zavření všech portů. 

(nebo jenom odchozí port pro VNC, SSH, ...)

příchozí web, ...

Aha - vnc nefunguje!

Otevření portu pro vnc.