
echo "Adding softlink to config folder"
ln -s ~/klipper-mmu/config ~/printer_data/config/mmu/
cp ~/klipper-mmu/example-mm_unit.cfg ~/printer_data/config/mm_unit.cfg

echo "Updating moonraker"
cat << EOF >> ~/printer_data/config/moonraker.cfg
[update_manager klipper-mmu]
type: git_repo
primary_branch: main
path: ~/klipper-mmu
origin: https://github.com/Karter87/klipper-mmu.git
managed_services: klipper
EOF

cat << EOF >> ~/printer_data/config/printer.cfg
[include mm_unit.cfg]
EOF

echo "Done installing"
echo "Don't forget to add ~/printer_data/config/mmu/mmu.cfg to your printer.cfg"
