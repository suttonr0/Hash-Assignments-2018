#!/bin/sh
grep '\$argon2i' suttonr.hashes > argonHashes.hashes
grep '\$1\$' suttonr.hashes > md5Hashes.hashes
grep '\$5\$' suttonr.hashes > sha256Hashes.hashes
grep '\$6\$' suttonr.hashes > sha512Hashes.hashes
grep '\$pbkdf2-sha256' suttonr.hashes > pbkdfHashes.hashes
grep -v -E '\$argon2i|\$1\$|\$5\$|\$6\$|\$pbkdf2-sha256' suttonr.hashes > desHashes.hashes

