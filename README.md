# 🇵🇱 Assassin's Creed II — Spolszczenie / Polish Language Mod

**Polskie napisy • Poprawione czcionki • Wersja Steam • Windows i Linux**

Nieoficjalne **spolszczenie Assassin's Creed II w wydaniu Steam**, przeznaczone zarówno dla **Windows**, jak i **Linuksa (Steam Play / Proton)**. Mod dodaje polskie napisy oraz zmodyfikowane zasoby czcionek umożliwiające wyświetlanie polskich znaków: **ą, ć, ę, ł, ń, ó, ś, ź, ż** (także wielkich liter).

Modyfikacja polega na podmianie dwóch plików gry, dlatego **nie wymaga Linuksa ani Protona**. Na Windows można zainstalować ją ręcznie; na Linuksie dostępny jest również skrypt instalacyjny. Wśród obsługiwanych środowisk linuksowych można wypróbować np. SteamOS, Bazzite, CachyOS, Fedora czy Ubuntu.

**Ważne:** spolszczenie przygotowano dla **wydania Steam**. Zgodność z innymi wydaniami gry (np. instalowanymi poza Steam) nie została potwierdzona.

> [!IMPORTANT]
> To **nieoficjalna, eksperymentalna modyfikacja**. Nie została sprawdzona na każdej konfiguracji ani z każdą aktualizacją gry. Przed instalacją zachowaj kopię oryginalnych plików.

## 📥 Pobieranie

**[➡️ Pobierz spolszczenie z GitHub Releases](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/releases/latest)**

W sekcji **Assets** pobierz archiwum **`AC2-Spolszczenie-Polish-Language-Mod.zip`** i rozpakuj je do wybranego folderu.

### Co znajduje się w paczce?

| Plik | Przeznaczenie |
| --- | --- |
| `DataPC.forge` | Zasoby gry zawierające spolszczenie. |
| `DataPC_extra.forge` | Zmodyfikowane zasoby, w tym poprawione czcionki. |
| [`install.sh`](install.sh) | Opcjonalny instalator dla Linuksa z automatyczną kopią zapasową (nie jest przeznaczony dla Windows). |
| `README-PL.txt` | Dodatkowe informacje i instrukcja w języku polskim. |
| Pliki `*_preview.png` | Podgląd zmodyfikowanych czcionek. |
| Plik `*_report.json` | Techniczny raport zmian i sum kontrolnych dołączony do paczki. |

## 🖼️ Podgląd czcionek

Poniższe obrazy przedstawiają zmodyfikowane atlasy znaków używane przez spolszczenie.

| Light | Medium |
| :---: | :---: |
| ![Podgląd czcionki Light](docs/font-light.png) | ![Podgląd czcionki Medium](docs/font-medium.png) |

## 📚 Pliki projektu

- [`install.sh`](install.sh) — kod instalatora z automatyczną kopią zapasową.
- [`CHANGELOG.md`](CHANGELOG.md) — historia zmian i znane ograniczenia.
- [`NOTICE.md`](NOTICE.md) — informacje o prawach autorskich.

## ✅ Wymagania

- Legalnie zainstalowana **Assassin's Creed II w wersji Steam**.
- **Windows** lub **Linux**; na Linuksie gra uruchamiana przez **Steam Play / Proton**.
- Dostęp do lokalnego katalogu gry.
- Dla opcjonalnej instalacji automatycznej **na Linuksie**: terminal i `bash`.

Nie trzeba instalować dodatkowych czcionek systemowych. Na Linuksie nie jest też wymagane dodawanie zmiennych `LANG` do parametrów uruchamiania gry.

## 🪟 Instalacja na Windows (Steam)

1. **Zamknij grę i Ubisoft Connect.**
2. W bibliotece Steam kliknij prawym przyciskiem myszy **Assassin's Creed II → Zarządzaj → Przeglądaj pliki lokalne**. Możesz też przejść przez **Właściwości → Zainstalowane pliki → Przeglądaj**.
3. Pobierz ZIP z [Releases](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/releases/latest) i **rozpakuj archiwum**.
4. W katalogu gry znajdź `DataPC.forge` i `DataPC_extra.forge`. **Wykonaj kopię zapasową obu oryginalnych plików** w osobnym folderze.
5. Skopiuj z rozpakowanego moda pliki `DataPC.forge` i `DataPC_extra.forge` do katalogu gry, **zastępując istniejące pliki**.
6. Uruchom **Assassin's Creed II przez Steam** i sprawdź wyświetlanie polskich napisów.

**Na Windows nie uruchamiaj `install.sh`** — jest to skrypt dla Linuksa. Do instalacji wystarcza podmiana dwóch plików `.forge`.

## 🐧 Instalacja na Linuksie — skrypt (zalecana)

1. **Zamknij grę oraz Ubisoft Connect.**
2. W Steam kliknij prawym przyciskiem myszy **Assassin's Creed II → Zarządzaj → Przeglądaj pliki lokalne**.
3. W menedżerze plików skopiuj **pełną ścieżkę do katalogu gry** — tego, w którym znajdują się oryginalne pliki `DataPC.forge` i `DataPC_extra.forge`.
4. Rozpakuj pobrane archiwum ZIP.
5. Otwórz terminal **w folderze rozpakowanego spolszczenia** (tam, gdzie znajduje się `install.sh`).
6. Uruchom polecenie, podając własną ścieżkę do gry:

~~~bash
bash ./install.sh "/pełna/ścieżka/do/folderu/gry"
~~~

Instalator sprawdzi obecność obu plików `.forge`, wykona kopię zapasową ich dotychczasowych wersji, a następnie zainstaluje zmodyfikowane pliki. **Na końcu wyświetli lokalizację kopii zapasowej.** Zapisz tę ścieżkę — przyda się do cofnięcia zmian.

**Nie uruchamiaj instalatora przez `sudo`**; działa on na plikach gry dostępnych dla użytkownika.

## 📁 Instalacja ręczna (Windows i Linux)

Jeżeli nie chcesz korzystać ze skryptu lub używasz Windows:

1. Zamknij grę i Ubisoft Connect.
2. W Steam otwórz **Zarządzaj → Przeglądaj pliki lokalne**.
3. Skopiuj oryginalne `DataPC.forge` i `DataPC_extra.forge` w bezpieczne miejsce poza folderem gry.
4. Z rozpakowanego ZIP skopiuj do **tego samego folderu gry** pliki:
   - `DataPC.forge`
   - `DataPC_extra.forge`
5. Potwierdź zastąpienie istniejących plików.
6. Uruchom grę przez Steam (**na Linuksie z użyciem Proton**).

> [!NOTE]
> Wystarczy podmienić **dwa pliki `.forge`**. Nie kopiuj do folderu gry plików podglądu, raportu ani instrukcji — nie są potrzebne do działania modyfikacji.

## 🔄 Jak cofnąć spolszczenie?

Masz dwie możliwości:

- **Przywróć kopie zapasowe** obu plików `.forge` do folderu gry (instalator automatyczny podaje ścieżkę do kopii w terminalu).
- **Przywróć oryginalne pliki przez Steam:** we właściwościach gry otwórz **Zainstalowane pliki → Sprawdź spójność plików gry**.

Weryfikacja plików przez Steam może również usunąć spolszczenie podczas późniejszej naprawy lub aktualizacji gry. Wtedy trzeba zainstalować poprawkę ponownie.

## ❓ Rozwiązywanie problemów

**Gra nadal wyświetla angielskie napisy**

Na **Windows i Linuksie** sprawdź najpierw, czy oba pliki `.forge` zostały skopiowane do właściwego katalogu instalacji **wersji Steam**. Upewnij się też, że gra została uruchomiona ponownie po podmianie plików.

Na **Linuksie** dodatkową przyczyną może być ustawienie języka w prefiksie Proton. Możesz sprawdzić je za pomocą **Protontricks**:

1. Uruchom Protontricks i wybierz **Assassin's Creed II** (Steam App ID: `33230`).
2. Wybierz **Select the default wineprefix → Run regedit**.
3. Przejdź do `HKEY_LOCAL_MACHINE\Software\Wow6432Node\Ubisoft\Assassin's Creed II`.
4. Jeśli istnieje wartość `Language`, ustaw ją na `Polish`, zamknij edytor i uruchom grę ponownie.

Ustawienie języka może zostać zmienione ponownie przez launcher. **Nie blokuj całego pliku rejestru Proton jako „immutable”**, ponieważ może to zakłócić działanie innych elementów prefiksu.

**Polskie znaki wyglądają inaczej niż zwykłe litery**

Czcionki zostały zmodyfikowane, ale część glifów może nadal wyglądać nieidealnie. Jeśli znajdziesz błąd, dołącz zrzut ekranu do zgłoszenia w [Issues](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/issues).

**Gra nie uruchamia się po instalacji**

Możliwe, że pliki gry różnią się od tych, na podstawie których przygotowano spolszczenie. Przywróć kopię zapasową albo użyj weryfikacji plików w Steam. Modyfikacja nie jest przeznaczona do dowolnych wydań gry.

**Instalator na Linuksie zgłasza brak pliku**

Upewnij się, że ZIP został w pełni rozpakowany, a wskazany katalog to **folder gry**, nie folder `compatdata` ani `pfx`.

## 📜 Licencja i informacje prawne

Kod skryptów i autorska dokumentacja projektu są udostępniane na warunkach [licencji MIT](LICENSE). Licencja ta **nie obejmuje** oryginalnych zasobów, znaków towarowych ani innych materiałów należących do **Ubisoft** i odpowiednich właścicieli praw.

Projekt społecznościowy, niezwiązany oficjalnie z Ubisoft, Valve ani twórcami Proton.

**Autor:** [wolfgangxxiii](https://github.com/wolfgangxxiii)

---

## 🌍 English

Unofficial **Polish language mod for the Steam edition of Assassin's Creed II**. Designed for **Windows and Linux** (Steam Play / Proton). Adds Polish subtitles and modified font assets with Polish diacritics.

### Installation on Windows (Steam)

1. Download and extract `AC2-Spolszczenie-Polish-Language-Mod.zip` from [Releases](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/releases/latest).
2. In Steam, open **Assassin's Creed II → Manage → Browse local files**.
3. Back up the original `DataPC.forge` and `DataPC_extra.forge` files.
4. Copy the two files with the same names from the extracted mod into the game directory, replacing the originals.
5. Launch the game through Steam.

**The `install.sh` script is for Linux only.** On Windows, install the mod by copying the two files manually.

### Installation on Linux (Steam / Proton)

1. Download and extract the ZIP from [Releases](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/releases/latest).
2. In Steam, choose **Manage → Browse local files** and copy the path to the game directory.
3. Open a terminal in the extracted mod directory and run:

~~~bash
bash ./install.sh "/full/path/to/your/game/directory"
~~~

The script backs up the two original `.forge` files and displays the backup location. Alternatively, you can install manually using the Windows instructions above.

### Reverting changes

Restore your backup copies or use **Steam → Properties → Installed Files → Verify integrity of game files**. Steam verification or game updates may overwrite the mod.

**Experimental and unofficial. Intended for the Steam release; compatibility with other editions and all game updates is not guaranteed. Not affiliated with Ubisoft or Valve.**
