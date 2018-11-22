# meteotux

Install script to run meteotux_pi in Raspberry Pi - obviously.

## Install

Maybe you need edit `init.d/meteotux` to change start and stop time.

```console
git clone https://github.com/mrprompt/meteotux.git
cd meteotux
sudo ./scripts/install.sh
```

## Archiving captures

You can add a call to `scripts/archive.sh` in your crontab.

```console
sudo crontab -e
5  8     * * *   pi /home/pi/meteotux/scripts/archive.sh && sudo reboot
```
