# Model/View/Controller

One of the most important features of a Rails app is that it adheres to convention. Designing apps in a conventional way is important because that way anyone can understand the main components of a Rails project quickly.

Rails apps are designed around a pattern called Model/View/Controller. The file structure reflects this idea. You have undoubtedly noticed that a Rails app has a lot of files in it! Don't worry, you won't need to be familiar with all of them. Most of the work that you will do takes place in the /app directory. You can see three subdirectories that reflect the MVC architecture there: /controllers, /models and /views.

## Models

This folder contains the models that we will use for our app. Models are similar to classes and reflect the information that we keep in the database. So for our vet app, we have a Pet model (Pet.rb). This model is a generalized version of the pets that we want to keep track of for our vet clinic. There is not a lot in this file, but it needs to be there so that Rails knows how to interact with what is in our database.

## Views

This folder contains the files that will be shown publicly on the website. You will notice that there are numerous files within the /views/pets directory. These files reflect the routes structure (which we will talk about next meeting time). If you take a look at one of these files, you will see some familiar HTML code. You can add anything in HTML to these pages since these are the views that appear on the website.
You have probably also noticed some code that is surrounded by <% %>. Inside of those brackets is Ruby. The brackets indicate erb, which stands for embedded Ruby (the files in the /views/pets subdirectory are all erb files, as you can see from the .erb at the end). erb allows us to display Ruby on an HTML page by 'embedding' it. We will address this topic in more detail later.


## Controllers

This folder contains the files that control information between the models and the views. We can use our Pet class to get the information from the database that we need, then pass it on to the views. For example, our first method, def index, gets all of the pets that we have in the database by requesting Pet.all. Pet is the model that we define as a class in app/model/Pet.rb. We then save all of the pets into an instance variable (we know it's an instance variable because it has @ in front of it).

The instance variable allows us to access what is in the variable on the views page. So if we look at the app/views/index.html.erb file, we can see that we are iterating through the array defined by the variable @pets (using a .each do) and listing all of the pets at the vet clinic. The list uses normal HTML with <ul> and <li>. Don't worry if this all seems a bit overwhelming right now, we will get lots of practice with it.

Most of the backend work that you will need to do with your app will take place in the Models and Controllers files. The Views are where the frontend meets the backend. We will be spending plenty more time to understand these ideas, but the most important concept for right now is the idea of MVC and how each of these tasks is separate in a Rails app.
