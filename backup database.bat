
ECHO .................BACKUP FINGERPRINT.................
cd C:/fingers/
dir
git add -A .
git commit -m "update Fingerprint"
git push origin master

PAUSE

ECHO .................SUCCESS.................
CLS