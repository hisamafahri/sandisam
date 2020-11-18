# sandisam App
sandisam is a Flutter based app for storing email, username, and password. Originally created from my concern of my long-list of internet account with different emails username and password.

# How can I use it?
To use this app, there are some step you have to do:

1. Clone this repository
To clone this repository:

* via Terminal
```
$ git clone https://github.com/hisamafahri/sandisam.git
```
* Download .zip file directly 
Just click "code" button on the top right corner of this project:
![code-button](https://docs.github.com/assets/images/help/repository/code-button.png)
and click "Download ZIP"

And then extract it.




2. Update Dart packages
Change the directory to the folder of this project inside your pc, ande run:
```
$ flutter pub get
```

# How can I add my list of Account and Password?
You can add it in the `database.dart` file in the `/lib/data/database.dart` [here](https://github.com/hisamafahri/sandisam/blob/main/lib/data/database.dart).

* Change master password
To change your master password (password you can use to login this app), change the `masterPassword` variable:
```
const masterPassword = 'YourMasterPassword123';
```


* Add account
To add an account details and store it in this app, you can add new `SandisamAccount` inside the `credentials` list. The `SandisamAccount` have 4 paramaters:
1. `platform` - The name of the platform (e.g. Instagram, Twitter, YouTube, etc);
2. `username` - Your username in coressponding platform;
3. `email` - Your related email
4. `password` - The password of that account



```
List<SandisamAccount> credentials = [
  SandisamAccount(
    platform: 'Instagram',
    username: '@hisamafahri',
    email: 'youremail@mail.com',
    password: "yourPassword12",
  ),
  SandisamAccount(
    platform: 'Twitter',
    username: '@hisamafahri',
    email: 'youremail@mail.com',
    password: "yourPassword1w2",
  ),
  
  // You can add as much as you want
  
  ],
  ```
  
 # Build the app
 After all of the things you wanna do with this app, to build it, (make sure you are in the project folder) just type:
 ```
 $ flutter build apk
 ```
 After that, move the `.apk` file to your phone and install it.
 
 
 # And you're set to go
  
 # Where is the password stored?
 Your account details are stored inside you phone. If you deleted this app from your app, the data will also be deleted.
