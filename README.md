# WORK IN PROGRESS !!

# klipper-mmu
Multi Material Unit with Klipper.

Based on:
MMU3 Ultimulti Frame
BigTreeTech SKR Pico 1.0 Control Board. 

Custom Macro's, which is still work in progress.


## Installation

Clone the git folder to your user account.

```
git clone git@github.com:Karter87/klipper-mmu.git ~/
```

### Using a script

Install it using the install script

```
bash ~/klipper-mmu/install.sh
```

### Manually install

Download the repository to the klipper host:

```
git clone git@github.com:Karter87/klipper-mmu.git ~/
```

Add softlink to the klipper config folder:

```
ln -s ~/klipper-mmu/config ~/printer_data/config/mmu/
```

```
cp ~/klipper-mmu/example-mm_unit.cfg ~/printer_data/config/mm_unit.cfg
```

Add the moonraker updater to your moonraker.cfg:

```
[update_manager klipper-mmu]
type: git_repo
primary_branch: main
path: ~/klipper-mmu
origin: https://github.com/Karter87/klipper-mmu.git
managed_services: klipper
```

Update printer.cfg, add the mm_unit.cfg

```
[include mm_unit.cfg]
```