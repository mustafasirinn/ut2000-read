#!/bin/bash
chmod +x ./gereklikurulum.sh
./gereklikurulum.sh
read -p 'Oluşturulacak dosya adını girin: ' data
python getshot.py > $data.bin
echo Ölçüm alındı. $data.bin dosyası oluşturuldu.
python pd2png.py $data.bin $data.png
echo Ölçüm görseli $data.png oluşturuldu.