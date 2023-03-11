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


#### For easy routing make a class and define instance variable and use them (make them static so we not neet to instantiate again and again)

![image](https://user-images.githubusercontent.com/88712571/223036173-bc25ddb4-b389-45cb-bbc3-039c54e77cf9.png)


![image](https://user-images.githubusercontent.com/88712571/223036138-fd85378a-823f-44f8-9936-fffe3df31ec2.png)


![image](https://user-images.githubusercontent.com/88712571/223036253-8e26e39b-264e-45c3-94a7-7b729e752a77.png)


### Changing Size and Adding Naviation to Button

![image](https://user-images.githubusercontent.com/88712571/223035906-d0521c50-96c2-47a9-8731-e887ab9190f8.png)


### Making String Interpolation with 'Welcome Text' : 

1. Change Class From Stateless to stateful widget

![image](https://user-images.githubusercontent.com/88712571/223037119-32fad89f-ce52-4412-9601-d3cc4d77f7bd.png)


2. Create Empty Variable

`var name = "";`

3. Make Onchange Method and use setState() method to rendert again and again

![image](https://user-images.githubusercontent.com/88712571/223037416-e6e8915a-1412-4789-8917-a53d061d58d6.png)


### Making Button Using Container for Adding Animation

```
Container(
                  
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                         8,
                        )),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                  ),
```

### Adding Animation to Container
#### MAKE Container animated and add duration

```
AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 8,
                        )),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                  ),
```

#### Add Variable for check

` bool changeButton = false;`

#### Wrap under InkWell and Use onTap() and add setState() in that

```
InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                   
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 8,
                        )),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                  ),
                )
```

#### as animation will be of one second so after 1 second we have to change screen

#### Add Navigator

```
onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoute.homeRoute);
                  }
```

##### Final Button

```
InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoute.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 8,
                        )),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                  ),
                )
```
#### Use Ternery Operator

` /* color: changeButton
                            ? Colors.deepPurple
                            : Colors.deepOrange ,*/
`


#### Added Icon
```
child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
```

Output : 
![image](https://user-images.githubusercontent.com/88712571/223044586-40e5671f-0082-4099-aca6-c86b29e32423.png)

![image](https://user-images.githubusercontent.com/88712571/223044545-07506129-fb14-41b4-b2e0-81b6682fc510.png)

### Setting Button to Original State

![image](https://user-images.githubusercontent.com/88712571/223045040-1dbfdffc-ca38-4d71-a9a1-98d452616f67.png)


### Adding Validation

# Wrap Outer Column under Form

![image](https://user-images.githubusercontent.com/88712571/223045870-3b78eb26-8dfb-4fd9-a7a0-455174b7dbd2.png)

## Make Form Key (_ --> For Private )

` final _formKey = GlobalKey<FormState>(); `

## use under Form

`    key: _formKey,`

## Move Core in Method

![image](https://user-images.githubusercontent.com/88712571/223407541-2468fcec-04bc-4c88-9790-04374046344f.png)

## Call Function

![image](https://user-images.githubusercontent.com/88712571/223407686-a3b31ae8-e38a-4b2b-89b5-a2f19bdc3df9.png)

## Add Validator Under Text Field

![image](https://user-images.githubusercontent.com/88712571/223408964-eb410151-d024-4c49-9da8-9b62d62c75c8.png)

## Wrap with Method

![image](https://user-images.githubusercontent.com/88712571/223411138-11c21923-81cf-4335-9a89-d8a1b0ccaff3.png)

## Done

![image](https://user-images.githubusercontent.com/88712571/223411230-ab3b7067-4f0f-4ad4-afda-1129f2a93deb.png)


# Improving HomePage

## Make Drawer

Make A Stateless Widget

![image](https://user-images.githubusercontent.com/88712571/223701047-311bd508-6ae4-4a56-a799-c571531d2515.png)

Import in Scaffold

![image](https://user-images.githubusercontent.com/88712571/223701119-f4d98c58-8b0d-4d71-ac1a-4c5a66b385bb.png)

## Adding Image From Network

```
  final _imageUrl =
      "https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg";
```

## Using Image

`currentAccountPicture: Image.network(_imageUrl),`

## Output 

![image](https://user-images.githubusercontent.com/88712571/223703026-9a07cffe-7368-4672-9717-08aaf05713ac.png)

## Circiling Imaage

use 

```
 currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(_imageUrl),
              ),
```

Output :

![image](https://user-images.githubusercontent.com/88712571/223703428-d32396bf-246c-4f4b-b491-6af943348928.png)

## Adding Color to Whole Drawer

Wrap ListView with container and set color to deepPurple

![image](https://user-images.githubusercontent.com/88712571/223704240-26cc7676-4179-4319-9dfa-1efed8b791f6.png)

## Adding ListTiles

```
ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
```

Output 

![image](https://user-images.githubusercontent.com/88712571/223705994-166b47ff-d005-42c0-ae90-2aa4c5ede895.png)

# Changing HomePage Theme

![image](https://user-images.githubusercontent.com/88712571/223756363-e7e5503c-3372-4c5d-83f3-11aeb7422ec8.png)

Output :

![image](https://user-images.githubusercontent.com/88712571/223756482-5e9cba9b-baa0-4803-be07-9874e35cd53b.png)

# Seperating Theme

![image](https://user-images.githubusercontent.com/88712571/223779270-4bd3a6b7-c7e7-4cb5-ad0e-67d075240256.png)

```
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
      );

  static ThemeData DarkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
```
## Import Theme

![image](https://user-images.githubusercontent.com/88712571/223779469-93419169-fd73-491d-a312-90bcc0284938.png)

## Ouput 
Same as Above

# Add Model For Data

![image](https://user-images.githubusercontent.com/88712571/223790506-c38a856f-177f-4542-98d6-011eaab9a3c1.png)

```
class CatelogModel {
  static final Items = [
    Item(
        id: "1",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;

  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}


```

## make item_widget class

![image](https://user-images.githubusercontent.com/88712571/223807457-541c58b6-f2e6-489a-a6e0-99d864ebfac5.png)

```
import 'package:catelog_application/models/catelog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 0.5,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```

in HomePage body make 

![image](https://user-images.githubusercontent.com/88712571/223807254-39f3411c-5311-4da0-bfb3-5c6e42e7d295.png)

## Lets Generate DummyList

`  final dummyList = List.generate(50, (index) => CatelogModel.Items[0]); `

## Return

![image](https://user-images.githubusercontent.com/88712571/223809346-fea0c716-c041-40fe-84b4-93500ce9aada.png)


Output :

![image](https://user-images.githubusercontent.com/88712571/223810269-3d0b912e-84f7-4b27-ab67-2a2d12cb0db0.png)

# Adding Data

## Make Folder in Assests > Files > iMPORT Data File

```
{
    "products": [
        {
            "id": 1,
            "name": "iPhone 12 Pro",
            "desc": "Apple iPhone 12th generation",
            "price": 999,
            "color": "#33505a",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
        },
        {
            "id": 2,
            "name": "Pixel 5",
            "desc": "Google Pixel phone 5th generation",
            "price": 699,
            "color": "#00ac51",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd0JhwLvm_uLDLc-la7hK9WyVpe9naJFcebKfhcICiq2KtvXDePNAU_9QO06LPcQ0K0fLByc7m&usqp=CAc"
        },
        {
            "id": 3,
            "name": "M1 Macbook Air",
            "desc": "Apple Macbook air with apple silicon",
            "price": 1099,
            "color": "#e0bfae",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOMstwtmLnjFb3NHiDJ_kcQnueNVH-rv_3ps96HZmXlFumKWaiBqq_L4Uoyx3iFiNTrXNEbyB&usqp=CAc"
        },
        {
            "id": 4,
            "name": "Playstation 5",
            "desc": "Sony Playstation 5th generation",
            "price": 500,
            "color": "#544ee4",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOMstwtmLnjFb3NHiDJ_kcQnueNVH-rv_3ps96HZmXlFumKWaiBqq_L4Uoyx3iFiNTrXNEbyB&usqp=CAc"
        },
        {
            "id": 5,
            "name": "Airpods Pro",
            "desc": "Apple Aipods Pro 1st generation",
            "price": 200,
            "color": "#e3e4e9",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQROEs084z65psoo06zYl5R0tUzywOVKVQZzmzqCj3PDP1vVJTWv3gGwGMFENSy4qV4n7sEQjE&usqp=CAc"
        },
        {
            "id": 6,
            "name": "iPad Pro",
            "desc": "Apple iPad Pro 2020 edition",
            "price": 799,
            "color": "#f73984",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzUeRQ5uH7E3hpECib8qxdhfHv6SnUGT7mOsew_xiOoqRR7ZpdH-TQ4J6-HuIEfqHimYyPXWH&usqp=CAc"
        },
        {
            "id": 7,
            "name": "Galaxy S21 Ultra",
            "desc": "Samsung Galaxy S21 Ultra 2021 edition",
            "price": 1299,
            "color": "#1c1c1c",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT_PZcc0wicVYR992s5QCIDLYy8t-z-9kibTUdWZBN2sd86aaqdAJfhvxAwZNWV9wfdzDikpr1&usqp=CAc"
        },
        {
            "id": 8,
            "name": "Galaxy S21",
            "desc": "Samsung Galaxy S21 2021 edition",
            "price": 899,
            "color": "#7c95eb",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBNHd7FwarbxA1xdMFt24KazjcR4dWPH_t_T5dz4YNK1s7rJAQ8gOIuR_NRw6eeiQgFhbZ9sAN&usqp=CAc"
        }
    ]
}
```

## In homepage Make it Stateful widget by clicking on Bulb Button


## Then Import a initState method from overridin file inside _HomePage class (Private) -- to get data before initilization 

![image](https://user-images.githubusercontent.com/88712571/224082597-7189e3d5-491a-418b-a960-28a8e9653ded.png)


## Make LoadFolder method in it and them call it outside

![image](https://user-images.githubusercontent.com/88712571/224082804-20629546-3209-420a-8c32-bed6e1fff8ba.png)

## You can verify the data by printing it

![image](https://user-images.githubusercontent.com/88712571/224082975-364b5f73-a084-4feb-a300-4c25b45e0c23.png)

## As the Method is Returning String we have to decode it using decoder

import 
`import 'dart:convert';`

use

```
var decodedData = jsonDecode(catelogJson); //String to map
    print(decodedData);
        var productData = decodedData["products"];
    print(productData);
```

![image](https://user-images.githubusercontent.com/88712571/224084127-d078fea4-6265-43b4-85e6-2c8c0c2d11a3.png)

## Json Mapping

![image](https://user-images.githubusercontent.com/88712571/224087819-e3b06d05-19fb-4361-acfc-7576725c7dde.png)

## Change to List
![image](https://user-images.githubusercontent.com/88712571/224089386-c9eda943-3f51-4b1e-953a-afd467512359.png)

## Map

![image](https://user-images.githubusercontent.com/88712571/224089272-7f96e3c4-6e9f-421f-8483-b757de27c6b2.png)

## Replace

![image](https://user-images.githubusercontent.com/88712571/224089620-0546bde5-b3e4-4ac9-a570-f943d13b30e2.png)

## Call SetState()

![image](https://user-images.githubusercontent.com/88712571/224089953-16e1561e-74db-4bc3-b620-c56d1a4d96b3.png)

## Done

## Improving Code

![image](https://user-images.githubusercontent.com/88712571/224097582-4f9ffd69-40c6-4146-b8b1-a01138263dcf.png)

# Added Grid View Rather than ListView

![image](https://user-images.githubusercontent.com/88712571/224119381-3477320c-2dbd-4ecf-9af0-6c1de1ffb188.png)

## Output :
 
 ![image](https://user-images.githubusercontent.com/88712571/224119481-821bf0d2-d645-4115-8fdd-001acaf41431.png)


# Added Final Styles

```
body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatelogModel.Items != null && CatelogModel.Items.isNotEmpty)
            ? /* ListView.builder(
                itemCount: CatelogModel.Items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatelogModel.Items[index],
                  );
                }) */
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12),
                itemBuilder: (context, index) {
                  final item = CatelogModel.Items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        /* side:
                            BorderSide(color: Color.fromARGB(255, 83, 83, 85)), */
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      child: Image.network(item.image),
                      header: Container(
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.deepPurple)),
                      footer: Container(
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.green[600])),
                    ),
                  );
                },
                itemCount: CatelogModel.Items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
```

# Output : 
![image](https://user-images.githubusercontent.com/88712571/224129042-5d968be9-b335-4729-8022-f744dc8be700.png)

# Now We will Use `Velocity-x`  for rest

## Delete and all Velocity Code
```
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      // To Start from Area
      body: SafeArea(
          child: Container(
              // Adding Padding
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyHeader(),
                  if (CatelogModel.Items != null &&
                      CatelogModel.Items.isNotEmpty)
                    CatelogList().expand()
                  else
                    Center(child: CircularProgressIndicator())
                ],
              ))),
    );
   
 ```
 
 ## Sperating Header Element
 ```
 class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // To Start from Left
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "ProDiscounts.github.io"
            // Text Type
            .text
            // exxtra Large
            .xl4
            // Bold
            .bold
            // Color
            .color(MyTheme.darkBluishColor)
            // to make it a widget
            .make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}
 ```
 ## For getting Catelog List

```
class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatelogModel.Items.length,
        itemBuilder: (context, index) {
          final catelog = CatelogModel.Items[index];
          return CatelogItem(
            catelog: catelog,
          );
        });
  }
}

class CatelogItem extends StatelessWidget {
  final Item catelog;
  const CatelogItem({super.key, required this.catelog})
      : assert(catelog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatelogImage(image: catelog.image),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catelog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              catelog.desc.text.sm
                  .textStyle(context.captionStyle)
                  .color(MyTheme.darkBluishColor)
                  .bold
                  .make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${catelog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyTheme.darkBluishColor),
                          shape: MaterialStatePropertyAll(StadiumBorder())),
                      onPressed: () {},
                      child: "Buy".text.bold.make())
                ],
              ).pOnly(right: 12)
            ],
          ))
        ],
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}

```

## For Adding Image

```
class CatelogImage extends StatelessWidget {
  final String image;
  const CatelogImage({super.key, required this.image}) : assert(image != null);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.p16.rounded.color(MyTheme.creamColor).make().p16();
  }
}
```

### Complete Class

```
import 'package:catelog_application/widgets/Themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import '../models/catelog.dart';
import '../widgets/Drawer.dart';
import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 30;

  final name = "Avtar";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catelogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catelogJson); //String to map
    var productData = decodedData["products"];
    CatelogModel.Items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      // To Start from Area
      body: SafeArea(
          child: Container(
              // Adding Padding
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyHeader(),
                  if (CatelogModel.Items != null &&
                      CatelogModel.Items.isNotEmpty)
                    CatelogList().expand()
                  else
                    Center(child: CircularProgressIndicator())
                ],
              ))),
    );
  }
}

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // To Start from Left
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "ProDiscounts.github.io"
            // Text Type
            .text
            // exxtra Large
            .xl4
            // Bold
            .bold
            // Color
            .color(MyTheme.darkBluishColor)
            // to make it a widget
            .make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatelogModel.Items.length,
        itemBuilder: (context, index) {
          final catelog = CatelogModel.Items[index];
          return CatelogItem(
            catelog: catelog,
          );
        });
  }
}

class CatelogItem extends StatelessWidget {
  final Item catelog;
  const CatelogItem({super.key, required this.catelog})
      : assert(catelog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatelogImage(image: catelog.image),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catelog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              catelog.desc.text.sm
                  .textStyle(context.captionStyle)
                  .color(MyTheme.darkBluishColor)
                  .bold
                  .make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${catelog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyTheme.darkBluishColor),
                          shape: MaterialStatePropertyAll(StadiumBorder())),
                      onPressed: () {},
                      child: "Buy".text.bold.make())
                ],
              ).pOnly(right: 12)
            ],
          ))
        ],
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}

class CatelogImage extends StatelessWidget {
  final String image;
  const CatelogImage({super.key, required this.image}) : assert(image != null);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.p16.rounded.color(MyTheme.creamColor).make().p16();
  }
}

```

## Ouput :

![image](https://user-images.githubusercontent.com/88712571/224370284-80de3269-b394-4484-b07b-5c345d902111.png)

## Seperating Files

![image](https://user-images.githubusercontent.com/88712571/224372644-2130c176-c051-4051-9393-d3b691bb3a25.png)

## Adding a Route in Cart

```
class MyRoute {
  static String homeRoute = "/";
  static String homeDetailsRoute = "/details";
  static String loginRoute = "/Login";
  static String cartPage = "/Cart";
}

```
# Creating Cart Page

```
import 'package:catelog_application/cors/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../utils/routes.dart';
import '../widgets/Themes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.theme.hintColor),
        title: "Cart".text.bold.color(context.theme.hintColor).make(),
        centerTitle: true,
      ),
      body: Column(
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        VxConsumer(
            builder: (context, store, status) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.hintColor)
                  .make();
            },
            mutations: {RemoveMutation}),
        30.widthBox,
        ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.loginRoute);
                  /* ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: "Shop Not Opened Yet..".text.make())); */
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                child: "Buy Now".text.white.make())
            .w24(context)
            .h10(context)
      ]),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Cart is Empty".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done, color: context.theme.errorColor),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline,
                        color: context.theme.errorColor),
                    onPressed: () => RemoveMutation(_cart.items[index])
                    // _cart.remove();
                    // setState(() {});
                    ,
                  ),
                  title: _cart.items[index].name.text
                      .color(context.theme.hintColor)
                      .make(),
                ));
  }
}

```

### Output 

![image](https://user-images.githubusercontent.com/88712571/224471464-605d4000-bdef-4190-b65a-e1c3625f7a1b.png)


## Craeting a Mapping Model For Cart

![image](https://user-images.githubusercontent.com/88712571/224471536-e0e033f6-1d3c-4b6f-8684-a28df4ca5215.png)

## Mapping

```
import 'package:catelog_application/cors/store.dart';
import 'package:catelog_application/models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {


  late CatelogModel _catelog;

  // catelog Field

// COLLECTION OF IDS - FOR EACT ITEM
  final List<int> _itemIds = [];

  // get Catelog
  CatelogModel get catelog => _catelog;

  // set

  set catelog(CatelogModel newCatelog) {
    assert(newCatelog != null);
    _catelog = newCatelog;
  }

  // Get Items
  List<Item> get items => _itemIds.map((id) => _catelog.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

// Add Item
class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

// Remove Item
class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
```
## Seperating Widget

![image](https://user-images.githubusercontent.com/88712571/224471630-8024f89d-0f2c-42cb-bf95-a3e2ed34058f.png)

## Add Seperate Logic

```
import 'package:catelog_application/cors/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catelog.dart';
import '../Themes.dart';

class AddToCart extends StatelessWidget {
  final Item catelog;
  AddToCart({super.key, required this.catelog});

  // final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    // VxState.listen(context, to: []);
    VxState.watch(context, on: [AddMutation, RemoveMutation]);

    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catelog) ?? false;
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
            shape: MaterialStatePropertyAll(StadiumBorder())),
        onPressed: () {
          if (!isInCart) {
            AddMutation(catelog);
            // setState(() {});
          }
        },
        child: isInCart ? Icon(Icons.done) : "Add to Card".text.bold.make());
  }
}
```
## CatelogHeader

```
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // To Start from Left
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "ProDiscounts.github.io"
            // Text Type
            .text
            // exxtra Large
            .xl4
            // Bold
            .bold
            // Color
            .color(context.theme.hintColor)
            // to make it a widget
            .make()
            .p0(),
        "Trending Products".text.xl2.color(context.theme.errorColor).make(),
      ],
    );
  }
}
```

## CatelogImage

```
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Themes.dart';

class CatelogImage extends StatelessWidget {
  final String image;
  const CatelogImage({super.key, required this.image}) : assert(image != null);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.p16.rounded.color(MyTheme.creamColor).make().p16();
  }
}

```

## CatelogImage

```
import 'package:catelog_application/models/cart.dart';
import 'package:catelog_application/pages/Home_Details_Page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catelog.dart';
import '../Themes.dart';
import 'add_to_cart.dart';
import 'catelog_image.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatelogModel.Items.length,
        itemBuilder: (context, index) {
          final catelog = CatelogModel.Items[index];
          return InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(catelog: catelog),
                ),
              ),
            },
            child: CatelogItem(
              catelog: catelog,
            ),
          );
        });
  }
}

class CatelogItem extends StatelessWidget {
  final Item catelog;
  const CatelogItem({super.key, required this.catelog})
      : assert(catelog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catelog.id.toString()),
              child: CatelogImage(image: catelog.image)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catelog.name.text.lg.color(MyTheme.darkCreamColor).bold.make(),
              catelog.desc.text.sm
                  .textStyle(context.captionStyle)
                  .color(MyTheme.darkCreamColor)
                  .bold
                  .make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${catelog.price}".text.bold.xl.make(),
                  AddToCart(
                    catelog: catelog,
                  )
                ],
              ).pOnly(right: 12)
            ],
          ))
        ],
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}

```

![image](https://user-images.githubusercontent.com/88712571/224471749-fd454629-63f9-4aa3-9717-fb7b4ed551cf.png)

![image](https://user-images.githubusercontent.com/88712571/224471755-f948b9bb-6da5-4b71-ad1e-56d184e9be73.png)


## Adding Themes

```
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        buttonColor: darkBluishColor,
        accentColor: creamColor,
        hintColor: darkBluishColor,
        errorColor: Vx.black,
        appBarTheme: AppBarTheme(
            color: Colors.deepPurple,
            elevation: 0.5,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: darkCreamColor,
        cardColor: Vx.black,
        buttonColor: ExtradarkBluishColor,
        accentColor: creamColor,
        hintColor: creamColor,
        errorColor: creamColor,
        appBarTheme: AppBarTheme(
            color: Colors.deepPurple,
            elevation: 0.5,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Colors.deepPurple;
  static Color ExtradarkBluishColor = Vx.indigo500;
}
```

## Try Changing from Main from Theme.system to light or dark


# Getting Data from Http/Network

## Add Package `http from pub`

## import Package

`import 'package:http/http.dart' as http;`

## Add Url
![image](https://user-images.githubusercontent.com/88712571/224472270-bbb5b701-1224-4651-9a80-3e2ca8d072f1.png)

## Update

![image](https://user-images.githubusercontent.com/88712571/224472318-c23d95c8-416d-4ce9-9f37-eeb1033a1c7c.png)

and

![image](https://user-images.githubusercontent.com/88712571/224472397-3ac56596-a2f6-4b59-934b-2e7d02ad67b4.png)

# Done
![image](https://user-images.githubusercontent.com/88712571/224472417-7ec41dff-03ad-4fce-a84c-106d165c804b.png)


