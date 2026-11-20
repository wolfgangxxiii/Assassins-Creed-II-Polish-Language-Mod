# 🇵🇱 Assassin's Creed II — Spolszczenie / Polish Language Mod

**Polskie napisy • Poprawione czcionki • Steam • Linux • Proton**

Nieoficjalne spolszczenie **Assassin's Creed II** dla wydania gry na **Steam**, uruchamianego na **Linuksie przez Steam Play / Proton**. Modyfikacja udostępnia polskie napisy i zmienione zasoby czcionek, aby gra mogła wyświetlać polskie znaki diakrytyczne: **ą, ć, ę, ł, ń, ó, ś, ź, ż** (oraz ich wielkie odpowiedniki).

Projekt jest przeznaczony dla użytkowników Linuksa — **nie tylko Bazzite**. Można go wypróbować m.in. na SteamOS, Bazzite, CachyOS, Fedora, Ubuntu i innych dystrybucjach korzystających ze Steam i Proton.

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
| `install.sh` | Instalator dla Linuksa z automatycznym wykonaniem kopii zapasowej. |
| `README-PL.txt` | Dodatkowe informacje i instrukcja w języku polskim. |
| Pliki `*_preview.png` | Podgląd zmodyfikowanych czcionek. |
| `V4_report.json` | Techniczny raport zmian i sum kontrolnych dołączony do paczki. |

## ✅ Wymagania

- Legalnie zainstalowana **Assassin's Creed II — wersja Steam**.
- **Linux** ze Steam i włączoną obsługą **Proton / Steam Play**.
- Dostęp do folderu plików gry.
- Dla instalacji automatycznej: terminal i powłoka `bash`.

Nie trzeba instalować dodatkowych czcionek w systemie ani dodawać zmiennych `LANG` do opcji uruchamiania gry.

## 🛠️ Instalacja automatyczna (zalecana)

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

## 📁 Instalacja ręczna

Jeśli nie chcesz używać skryptu:

1. Zamknij grę i Ubisoft Connect.
2. W Steam otwórz **Zarządzaj → Przeglądaj pliki lokalne**.
3. Skopiuj oryginalne `DataPC.forge` i `DataPC_extra.forge` w bezpieczne miejsce poza folderem gry.
4. Z rozpakowanego ZIP skopiuj do **tego samego folderu gry** pliki:
   - `DataPC.forge`
   - `DataPC_extra.forge`
5. Potwierdź zastąpienie istniejących plików.
6. Uruchom grę przez Steam z użyciem Proton.

> [!NOTE]
> Wystarczy podmienić **dwa pliki `.forge`**. Nie kopiuj do folderu gry plików podglądu, raportu ani instrukcji — nie są potrzebne do działania modyfikacji.

## 🔄 Jak cofnąć spolszczenie?

Masz dwie możliwości:

- **Przywróć kopie zapasowe** obu plików `.forge` do folderu gry (instalator automatyczny podaje ścieżkę do kopii w terminalu).
- **Przywróć oryginalne pliki przez Steam:** we właściwościach gry otwórz **Zainstalowane pliki → Sprawdź spójność plików gry**.

Weryfikacja plików przez Steam może również usunąć spolszczenie podczas późniejszej naprawy lub aktualizacji gry. Wtedy trzeba zainstalować poprawkę ponownie.

## ❓ Rozwiązywanie problemów

**Gra nadal wyświetla angielskie napisy**

Sprawdź, czy skopiowano **oba** pliki `.forge` do właściwego folderu. Jeśli to nie pomaga, przyczyną może być ustawienie języka w prefiksie Proton. Możesz sprawdzić je za pomocą **Protontricks**:

1. Uruchom Protontricks i wybierz **Assassin's Creed II** (Steam App ID: `33230`).
2. Wybierz **Select the default wineprefix → Run regedit**.
3. Przejdź do `HKEY_LOCAL_MACHINE\Software\Wow6432Node\Ubisoft\Assassin's Creed II`.
4. Jeśli istnieje wartość `Language`, ustaw ją na `Polish`, zamknij edytor i uruchom grę ponownie.

Ustawienie języka może zostać zmienione ponownie przez launcher. **Nie blokuj całego pliku rejestru Proton jako „immutable”**, ponieważ może to zakłócić działanie innych elementów prefiksu.

**Polskie znaki wyglądają inaczej niż zwykłe litery**

Czcionki zostały zmodyfikowane, ale część glifów może nadal wyglądać nieidealnie. Jeśli znajdziesz błąd, dołącz zrzut ekranu do zgłoszenia w [Issues](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/issues).

**Gra nie uruchamia się po instalacji**

Możliwe, że pliki gry różnią się od tych, na podstawie których przygotowano spolszczenie. Przywróć kopię zapasową albo użyj weryfikacji plików w Steam. Modyfikacja nie jest przeznaczona do dowolnych wydań gry.

**Instalator zgłasza brak pliku**

Upewnij się, że ZIP został w pełni rozpakowany, a wskazany katalog to **folder gry**, nie folder `compatdata` ani `pfx`.

## 📜 Licencja i informacje prawne

Kod skryptów i autorska dokumentacja projektu są udostępniane na warunkach [licencji MIT](LICENSE). Licencja ta **nie obejmuje** oryginalnych zasobów, znaków towarowych ani innych materiałów należących do **Ubisoft** i odpowiednich właścicieli praw.

Projekt społecznościowy, niezwiązany oficjalnie z Ubisoft, Valve ani twórcami Proton.

**Autor:** [wolfgangxxiii](https://github.com/wolfgangxxiii)

---

## 🌍 English

Unofficial **Polish language mod for Assassin's Creed II (Steam)** running on **Linux through Proton / Steam Play**. Includes Polish subtitles and modified game font assets with support for Polish diacritics.

1. Download **`AC2-Spolszczenie-Polish-Language-Mod.zip`** from [Releases](https://github.com/wolfgangxxiii/Assassins-Creed-II-Polish-Language-Mod/releases/latest) and extract it.
2. In Steam, right-click the game and select **Manage → Browse local files** to find the game directory.
3. Open a terminal inside the extracted mod directory and run:

~~~bash
bash ./install.sh "/full/path/to/your/game/directory"
~~~

The installer backs up the two existing `.forge` files before replacing them and prints the backup location. You can also copy the two `.forge` files manually after making your own backup. Steam's **Verify integrity of game files** restores the originals.

**Experimental / unofficial / not affiliated with Ubisoft or Valve.**
