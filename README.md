# Lets_Learn_Flutter_2023
#### following this Video To Craete A Catelog Application https://www.youtube.com/watch?v=j-LOab_PzzU&amp;ab_channel=Codepur

use `flutter create catelog_application` and create Flutter Project

![image](https://user-images.githubusercontent.com/88712571/222898631-ffa1ea5b-a5c8-488c-bd7b-21e9cba0f6f9.png)

> In main.dart delete everything and make a stateless widget MyApp()

![image](https://user-images.githubusercontent.com/88712571/222899378-436d63b7-e842-4c95-b8c6-e9f9cbe5555b.png)

` Step 1 : Add MaterialApp() `
` in home: Add Scaffold() `
` add appbar : AppBar() `
` in body : Center(child:Text("Add Text")); `

![image](https://user-images.githubusercontent.com/88712571/222900065-252320ba-dfbb-4fab-a3a3-d3e58b9fd29a.png)

##### Add A Drawer 

![image](https://user-images.githubusercontent.com/88712571/222900503-64ddb520-b8ca-42a8-8a39-c409d70e3563.png)

Output

![image](https://user-images.githubusercontent.com/88712571/222900514-a515a38f-08df-4cdc-a934-a9fed93ca76c.png)

# Splitiing Files

> Make Folder

![image](https://user-images.githubusercontent.com/88712571/222901152-6118cdde-6174-40f9-9625-969f0f09bc9d.png)

##### Add Code

![image](https://user-images.githubusercontent.com/88712571/222901186-6be064ee-8be4-4b6e-bb49-533d465b0339.png)

##### Import in Main.dart `import 'pages/HomePage.dart';`;

![image](https://user-images.githubusercontent.com/88712571/222901217-72c4ec93-0b05-47c0-8a5d-d48c505747aa.png)

##### Use Function

![image](https://user-images.githubusercontent.com/88712571/222901252-30c2e887-9e1a-4bec-b562-859e22d4a52e.png)


#### Adding Theme

```
      // Give app Dark Theme based on System Theme
      // Setting code if application gets theme
      themeMode: ThemeMode.dark,
      theme: ThemeData(brightness: Brightness.dark),
      
```


![image](https://user-images.githubusercontent.com/88712571/222904475-8220870d-2980-4e7a-ac95-8444cd94ea50.png)

or

```
      // themeMode: ThemeMode.dark,
      theme: ThemeData(brightness: Brightness.dark),
```

![image](https://user-images.githubusercontent.com/88712571/222905840-7cb34c0e-ff63-481f-a467-b339c55a1d84.png)



Output

![image](https://user-images.githubusercontent.com/88712571/222904063-542c20c7-11c7-4b8b-a30d-f7e2fb6cd823.png)

  
#### Adding Light Theme

![image](https://user-images.githubusercontent.com/88712571/222904548-8a94f096-79e7-4e89-995c-a0fd66639c25.png)


```
      // Giving System Theme
      // Specify Theme
      // use brightness: Brightness.dark for Dark Theme
      // primarySwatch : adjust by color for Light Theme
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      
``` 

![image](https://user-images.githubusercontent.com/88712571/222904135-3fd39997-a5f2-46fa-988b-020320f1d83b.png)

#### If We use Both -- Brightness.dark will override it

![image](https://user-images.githubusercontent.com/88712571/222904688-b0752cc8-c3d0-4f86-902c-0ce4673445be.png)

![image](https://user-images.githubusercontent.com/88712571/222904706-c48f1418-70e9-49a0-b88d-dbded87afea5.png)

#### Using Routes - For Multiple Pages

Delete home Tag
![image](https://user-images.githubusercontent.com/88712571/222905537-0b3c4051-2e25-4804-a042-d84d0431ddba.png)

and Specify in the Routes

![image](https://user-images.githubusercontent.com/88712571/222908009-d0296d25-6777-4fcc-86a1-cb7b807f0f78.png)

```
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "This is Login Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
    );
  }
}

```
![image](https://user-images.githubusercontent.com/88712571/222908026-fcdcf8f3-23cf-414e-bff6-a5985608ce72.png)


# Creating a Login Page

## Adding an Image

1. Add Text Image use unDraw for image

> Specify in PUBSPEC FILE

![image](https://user-images.githubusercontent.com/88712571/222976549-d0cab7a9-f5a8-4fa7-b3a0-cdad42012862.png)

2. Add In Folder

![image](https://user-images.githubusercontent.com/88712571/222976571-b1decca5-82cb-4beb-aa64-ba759de2ccce.png)

3. Use in Form

```
Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
```

![image](https://user-images.githubusercontent.com/88712571/222976601-80e6fc92-4f24-42df-a63d-f6bdb69300bb.png)


Output :

![image](https://user-images.githubusercontent.com/88712571/222976667-30c98633-e956-4f95-87a8-641695bbf71f.png)

## Adding Google Fonts

1. iMPORT dEPENEDENCY FROM PUB.DEV

`flutter pub add google_fonts`

2. In Main File Specify Font

![image](https://user-images.githubusercontent.com/88712571/222976802-fec17a13-36cf-4904-a9e6-5f66986f027c.png)

### Use SpaceBox For Adding Space rather than Padding

## Adding Text Fields
```
TextFormField(
            decoration: InputDecoration(
                labelText: "Username", hintText: "Enter Your Username : "),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Password", hintText: "Enter Your Password : "),
          )
          
```

![image](https://user-images.githubusercontent.com/88712571/222977158-3a1baecc-7795-41fd-a36a-08b815e23596.png)


![image](https://user-images.githubusercontent.com/88712571/222977127-e0367b06-6bcf-4721-8064-8ac2c3c061a0.png)

### Specify TextField Size

Add Padding(for specifying size in symmetrical order) and add Column (for multiple Children)

```
 Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Your Username : "),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Your Password : "),
                )
              ],
            ),
          )
```

![image](https://user-images.githubusercontent.com/88712571/222977461-22df26b1-d146-4ca5-903f-03e2897df9ed.png)

Output :

![image](https://user-images.githubusercontent.com/88712571/222977542-645d2bde-6347-4ae5-9d0e-4d9f66c790a8.png)

### Add Button 

![image](https://user-images.githubusercontent.com/88712571/222977635-f81e276d-09a1-4ac9-9dec-e9072a2e7eb9.png)

Final Output 

![image](https://user-images.githubusercontent.com/88712571/222977674-6eb741bc-821b-473f-910b-13fe7ca4fcda.png)

