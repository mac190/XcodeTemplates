# README #

### How do I get set up? ###

* Clone repo
* create a symlink to you XCode Templates folder
```
ln -s "/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates" "/Yours/Favorite/Cloned/Repo/Path"
```
* Navigate to xCode path in Finder, click on Get info and navigate to "Sharing & Permissions", add your user there with "Read & Write" permissions
* Done

### Test Templates ###

Test templates are created to simplify work when creating unit tests. They need Nimble and Quick pods

### Custom Templates ###

Custom templates include simple baked solutions for fast creation of classes, protocols, simple views. To create views SnapKit pod is required.

### Networking Templates ###

Networking templates are designed to simplify creation of networking classes. Pod they use is Alamofire and SwiftyJSON.