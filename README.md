# Expirey

A flutter app that allows you to keep track of your food items' expiration dates and reports time until expiration in days.
The quantity of that particular item is also reported. 


# Why I did this project?
* I wished to create a multi-page application to solve a real world problem. 
* I wished to learn and get used to reading documentations and API files of programming languages. 
* Apply advanced Object Oriented Concepts I learned in my programming classes. 
* Apply Data Structures and Algorithms from my classes to a real world application. 
* Get used to handling a big (ish) projects with multiple files and produce clean, well documented code while solidifying my understand of the key OO principles and best practices.  

# The Important Bits

### <font size="1"> `lib/main.dart` </font> 

Here is where the app sets up all of the objects that hold the app together. This file returns a **```MaterialApp```** widget which is the root of the widget tree.  In the **```Widget build(BuildContext context) ```** method, the app returns a **`Scaffold`** Widget which holds the **`HomePage`** class as its **`body`** and the **`SideMenu`** class as its **`drawer`** attribute. 


### <font size="1"> `lib/Categories/*` </font>

This directory contains classes for all different categories of food such as Dairy, Meat etc.


### <font size="1"> `lib/Items/*` </font> 

This directory contains classes for all items that fall under the above mentioned categories. For example, for Dairy, items are eggs, milk and butter.

### `lib/Widgets/*`

This directory contains the custom widgets such has a pop up `BottomSheet` which allows the user to enter details such as Expiration Date, pick a category, an item and a quantity.

### `lib/Data/*`

This directory contains a class that introduces a `FirebaseDatabase` reference and updates the data in the backend by converting a map into `json`. It makes use of an `id` attribute for each `transaction` (which uniquely identifies each `transaction` entry) to push the data to a `Firebase` real-time database.
 
&copy; Muhammad Ali Malik 2021
