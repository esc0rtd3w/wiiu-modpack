@echo off

SET /p key= "Paste Key Here: "
python -c "import binascii; open('key.bin', 'wb').write(binascii.unhexlify('%key%'.replace(' ','')))"

pause