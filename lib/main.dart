import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yummies'),
    );
  }
}
class RecipePage extends StatelessWidget {
  final String imageUrl;
  final String recipe;
  final String title;

  const RecipePage({Key? key, required this.imageUrl, required this.recipe, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageUrl,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20), // Adding some space between the image and the text
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24, // Increase font size
              fontWeight: FontWeight.bold, // Make it bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              recipe,
              style: TextStyle(
                fontSize: 15, // Increase font size
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipePage(
                      title: "Hamburger",
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBUPwPIlopwbxUnKvcicgNkm6dEJi0-um6Uh88MVfV-gsb5-ZtNrcio5d0fsvjjlv8Me0&usqp=CAU',
                      recipe: 'Ingredients: 1 pound (450g) ground beef Salt and pepper 4 hamburger buns Cheese slices (optional) Lettuce, tomato, onion slices Condiments (ketchup, mustard, mayo) Instructions: Prepare Patties: Shape seasoned ground beef into 4 patties. Cook Patties: Grill patties for 4-5 mins per side. Add cheese for melting (optional). Toast Buns: Lightly toast hamburger buns. Assemble Hamburgers: Place patties on bottom buns. Layer with veggies, condiments. Cover with top bun. Serve Hot: Enjoy your classic homemade hamburgers!',
                    ),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBUPwPIlopwbxUnKvcicgNkm6dEJi0-um6Uh88MVfV-gsb5-ZtNrcio5d0fsvjjlv8Me0&usqp=CAU',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipePage(
                      title: "Coffee",
                      imageUrl: 'https://cdn.pixabay.com/photo/2016/04/26/16/58/coffe-1354786_640.jpg',
                      recipe: 'STEP 1 Make around 35ml espresso using your coffee machine and pour it into the base of your cup. STEP 2 Steam the milk with the steamer attachment so that it has around 2-3cm of foam on top. Hold the jug so that the spout is about 3-4cm above the cup and pour the milk in steadily. As the volume within the cup increases, bring the jug as close to the surface of the drink as possible whilst aiming to pour into the centre. Once the milk jug is almost touching the surface of the coffee, tilt to speed up the rate of pour. As you accelerate, the milk will hit the back of the cup and start naturally folding in on itself to create a pattern on the top.',
                    ),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/04/26/16/58/coffe-1354786_640.jpg',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),


            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipePage(
                      title: "Pizza",
                      imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*',
                      recipe: 'Ingredients: Pizza dough Pizza sauce Mozzarella cheese Toppings of your choice (pepperoni, mushrooms, bell peppers, etc.) Olive oil Instructions: Preparation: Preheat oven to 475°F (245°C). Roll out pizza dough on a floured surface. Assemble Pizza: Place dough on a baking sheet or pizza stone. Spread pizza sauce evenly over the dough. Sprinkle shredded mozzarella cheese. Add Toppings: Add desired toppings generously over the cheese layer. Bake: Drizzle olive oil around the edges of the dough. Bake in the preheated oven for 12-15 minutes until crust is golden and cheese is bubbly. Serve: Remove from oven and let it cool for a minute. Slice and serve your delicious homemade pizza!',
                    ),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            // Adding some space between image and text

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
