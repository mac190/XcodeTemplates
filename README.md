# README #

### How do I get set up? ###

* Clone repo
* create a symlink to you XCode Templates folder
```
ln -s "/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates" .
cd File\ Templates
chmod u+rw .

```
* Navigate to xCode path in Finder, click on Get info and navigate to "Sharing & Permissions", add your user there with "Read & Write" permissions
* copy (do not move) interested folder to "File Templates" directory
* Done

### Custom Templates ###

Custom templates include simple baked solutions for fast creation of classes, protocols, simple views. To create views SnapKit pod is required.

### MVVM+C ###

MVVM+C provides a simple set of View Controller + View Model + coordinator.

> Requrements: Factory pod.