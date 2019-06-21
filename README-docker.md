https://github.com/RoboZonky/robozonky/wiki/Docker-a-UNIX

Konkrétně jsem rozběhával na OSX 10.14.4

1) docker pull robozonky/robozonky

2) Spusť instalátor a nastav si hlavně credentials (e-mail a heslo).

3) Vytvoř adresář `volume/config`. Zkopíruj tam obsah adresáře, kam proběhla instalace instalátorem (podadresář dist nemusíš kopírovat).
Tzn obsah `volume/config` bude:

```
log4j2.xml
robozonky-exec.sh
robozonky-strategy.cfg
robozonky.cli
robozonky.keystore
robozonky.properties
```

4) V souboru robozonky.cli uprav cesty:

```
-g
"/etc/robozonky/robozonky.keystore"
-s
"/etc/robozonky/robozonky-strategy.cfg"
```

5) Do souboru `run.sh` ulož:
```
docker run -tid -v $PWD/volume/config:/etc/robozonky -e "CONFIG_DIRECTORY=/etc/robozonky" robozonky/robozonky
```

Spustíš pak: `bash run.sh`

Kontejner běží na pozadí (přepínač `d`).