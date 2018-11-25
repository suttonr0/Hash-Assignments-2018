# Hashcat Commands

WORDLIST ONLY: hashcat -a 0 -m 400 example400.hash example.dict
RULES AND WORDLIST: hashcat -a 0 -m 0 example0.hash example.dict -r rules/best64.rule
-o for output file
-a for attack mode (wordlist, mask, etc.)
-m for hash type

## Running on Local Windows Machine
### Wordlist
hashcat64.exe -a 0 -m 1500 -o ..\DEScracked.txt ..\desHashes.hashes ..\rockyou.txt -r rules\rockyou-30000.rule -O

### Bruteforce
Bruteforce attacks are outdated and very ineffective so instead a mask attack should be performed
hashcat64.exe -a 3 -m 0 hash.txt mask_file.hcmask
or
hashcat64.exe -a 3 -m 0 hash.txt <mask>
e.g. hashcat64.exe -a 3 -m 0 hash.txt ?l?l?l?l?l

### Combinator attack
hashcat64.exe -a 1 -m 0 hash.txt dict1.txt dict2.txt


