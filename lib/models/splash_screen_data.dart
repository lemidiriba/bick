class SplashScreenData {
  SplashScreenData({
    this.imagePath = '',
    this.titleTxt = '',
    this.description = '',
  
  });

  String imagePath;
  String titleTxt;
  String description;
 

 
  static List<SplashScreenData> splashScreenList = <SplashScreenData>[
    SplashScreenData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Location',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  make a type specimen book. It has survived not only five centuries,',
    ),
    SplashScreenData(
      imagePath: 'assets/fitness_app/lunch.png',
      titleTxt: 'Unlock',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  make a type specimen book. It has survived not only five centuries,',
    
    ),
    SplashScreenData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: 'Ride',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  make a type specimen book. It has survived not only five centuries,',
     
    ),
  
  ];
}