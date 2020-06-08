# GenricTables
 ## How To Create Generic Table And Its Cells Using UI-Kit 
#### UITableViews and UICollectionViews are the most commonly used interface components on IOS. They can be found on almost any app. In this tutorial, we will only be focusing on UItable Views. Luckily, implementing UITableView is not that difficulty. Below is the minimal code we need to implement our UITable using storyboard.
  <img width="865" alt="1" src="https://user-images.githubusercontent.com/29935876/84017015-74b4a700-a9c1-11ea-93ab-a390a9ea97d0.png">
 
#### But if an app needs another Table. Normally we would start by creating another view controller follows the above steps and  would look like this.
  <img width="856" alt="2" src="https://user-images.githubusercontent.com/29935876/84017023-75e5d400-a9c1-11ea-92f8-17867770f9d9.png">
####  Problem with above approach is, we will have the same code again and again for every TableView. Well, in this tutorial we will learn how to solve this issue with help of generics. We will start with renaming our VIewController class to BaseTableViewController and will pass a Generic T of Type UITableViewCell. Now our base class will look like this.
  <img width="955" alt="3" src="https://user-images.githubusercontent.com/29935876/84017031-78e0c480-a9c1-11ea-9e0a-1a89d63dfab2.png">
  <img width="598" alt="3a" src="https://user-images.githubusercontent.com/29935876/84017045-7bdbb500-a9c1-11ea-82f1-76672fa9b06f.png">
#### To run our app, all we need to do is create a VIewController and make it inherit from BaseTableViewController. Finally populate the list with string
  <img width="772" alt="4" src="https://user-images.githubusercontent.com/29935876/84017048-7e3e0f00-a9c1-11ea-89a9-bfd951845686.png">
#### You can see, we manage to remove all that repeatable code. But we have problem with list, it can only have strings as a value. But if one of the tables needs to show objects, Int or any other type. So, to solve This issue, we will introduce another Generic U and now our base class  will look like this
  <img width="1071" alt="5" src="https://user-images.githubusercontent.com/29935876/84017051-8007d280-a9c1-11ea-9d6e-8f215516a332.png">
#### And our VIewController Class will be 
  <img width="1285" alt="6" src="https://user-images.githubusercontent.com/29935876/84017063-826a2c80-a9c1-11ea-86fb-f5e22dc5c860.png">
#### Now we can pass any type to our list. But now we have another problem.  Every time, we inherit from base class, we will have to override CellForRowAt method.  Let’s solve This problem by introducing another Generic. This time we will create base class for Cell, and it will look like this.
  <img width="302" alt="7" src="https://user-images.githubusercontent.com/29935876/84017074-84cc8680-a9c1-11ea-8dfe-627cb05d0d58.png">
#### Now instead of passing UITableViewCell, we will pass BaseCell to our BaseTableViewController. Now our base table view class will look like this.
  <img width="925" alt="8" src="https://user-images.githubusercontent.com/29935876/84017603-3f5c8900-a9c2-11ea-8aa6-e18df342ad4a.png">
#### To run our App, all we need is cell which inherits from BaseCell and a VIewController which inherits from BaseTableViewController. 
#### Below are two examples, where our VIewController is rendering list of type Int and String Without overriding Any parent class Methods
  <img width="1226" alt="9" src="https://user-images.githubusercontent.com/29935876/84017608-408db600-a9c2-11ea-9eaf-a2e6ce585fbc.png">
  <img width="503" alt="10" src="https://user-images.githubusercontent.com/29935876/84017615-42577980-a9c2-11ea-9ef9-83a4b035a4e7.png">

#### That’s it. Once you have your base cell and Base table class setup Properly. All you need is the above snippet code to display data on the UITableView.
#### Thank You.
