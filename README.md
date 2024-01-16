Clone repo to $HOME directory
Use 'stow */' to create symlinks to the config files

To get all packages currently installed and put them in 'packages.txt' use the following:

```
    sudo dpkg-query -f '${binary:Package}\n' -W > packages.txt
```

To install all packages in 'packages.txt' use:

```
    sudo xargs -a packages.txt apt install
```
