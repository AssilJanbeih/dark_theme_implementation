# dark_theme_implementation

This project is a demonstration on how to implement the dark theme to your project.
Screenshots available as well.

## Packages needed:
3 packages are needed to implement the dark theme: 
-	[List tile switch](https://pub.dev/packages/list_tile_switch/install)
    - Add this line to 	your terminal: **```flutter pub add list_tile_switch ```**
-	[Provider](https://pub.dev/packages/provider/install)
    - Add this line to your terminal: **```flutter pub add provider```**
-	[Sahred Preferences](https://pub.dev/packages/shared_preferences/install)
    - Add this line to your terminal: **```flutter pub add shared_preferences```**

Finally run an  the command “flutter pub get” in your terminal and then check your package's in pubspec.yaml file under dependencies

## Structure:
1.	In your lib folder create 3 additional folders respectively and copy the classes from the repository.
    -	**Models** : includes a class file named ***dark_theme_prefrences.dart*** that uses the Shared prefrences package
    -	**Provider**: includes a class file named ***dark_theme_provider.dart*** that uses the class previously created in the model folder.
    -	**Constants**: includes a class file for dark theme where you can customize all your ThemeData. I personally created another class called ***colors.dart*** in which all my used colors are added. The ***theme_data.dart*** class includes all the Theme data properties. (make sure to keep unwanted properties commented.)
2.	Return the list tile switch in the desired widget. For demonstration I will add it in a home class.
3.	Adjust the ***main*** class to add the MultiProvider and call the desired screen
