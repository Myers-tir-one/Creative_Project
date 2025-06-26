 ![Image alt](https://github.com/Myers-tir-one/Creative_Project/blob/main/assets/prewiev.jpg)
 
## Getting Started

```
flutter pub get
```
___________________________________________________________________                                           
 assets:                                                     
 - assets/ava.png
 - assets/banner.png
 - assets/logo.png
 - assets/spy.png
 - assets/team.png
 - assets/team1.png
 - assets/team2.png
 - assets/кепка.png
 - assets/опасный.png
 - assets/перчатки.png
 - assets/целеус.png
__________________________________________________                                                                                  
Readme.md structure                                                                           

Folder stucture                                                     

/lib                            
└── core                              
│ ├── brand                         
│ ├── router │ ├── helpers                              
│ └── ...                
│                             
└── layers                     
│ └── data                         
│ │ ├── local                                 
│ │ │ └── sqflite_source.dart                                            
│ │ └── network                                
│ │ └── api.dart                             
│ └── domain                                    
│ │ ├── entity                                       
│ │ │ ├── product.dart                         
│ │ │ ├── user.dart                      
│ │ │ └── ...                                       
│ │ │                     
│ │ ├── repository                                      
│ │ │ ├── product_repository.dart                        
│ │ │ ├── user_repository.dart                                              
│ │ │ └── ...                                         
│ │ │                                      
│ │ └── usecases                                         
│ │ ├── product_usecase.dart                               
│ │ ├── user_usecase.dart                                       
│ │ └── ...                                            
│ │                                         
│ └── presentation                                         
│ ├── screens                                            
│ │ ├── home_screen.dart                       
│ │ ├── profile_screen.dart                         
│ │ └── ...                             
│ │                    
│ └── shared                                                    
│ ├── store                       
│ ├── ui                          
│ └── ...                                                       
│                                                      
└── main.dar                                                 
________________________________________________________________________________________________                                                             

