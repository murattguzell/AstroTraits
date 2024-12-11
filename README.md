
# Astro Traits

Project Description
This project is a mobile application that provides users with information about Zodiac signs. Users can access basic information about 12 zodiac signs and detailed features for each sign through the application. Zodiac signs provide users with features, date ranges and more for each sign, supported by visual elements.


## Features

-Viewing the Horoscope List
Description: When the application is opened, the user can view a list of 12 zodiac signs. The zodiac signs are presented with thumbnails along with their names and dates.

How to Present: On the horoscope list page, brief information (name, date, thumbnail) for each zodiac sign is listed as a list.

-Viewing the Horoscope Details
Description: When the user clicks on a zodiac sign item, more detailed information (characteristics, dates, etc.) of that sign is opened. A large image of the sign is also displayed.

How to Present: Each zodiac sign is made clickable via the HoroscopeItem widget. When clicked, it is directed to the HoroscopeDetails page and the details of the sign are displayed along with a large image.

-Dynamic AppBar Color
Description: On the horoscope detail page, the color of the page's title bar (app bar) is dynamically changed according to the large image of the sign. This feature is derived from the dominant color of the image.
How to Present: Using SliverAppBar, the color of the application bar on the horoscope detail page is set to match the image.

-Scrollable Content
Description: Horoscope details are displayed in a scrollable area. So the user can easily read the detailed descriptions.

How to Present: Using CustomScrollView and SliverToBoxAdapter, detailed information about horoscopes is displayed as long text and made scrollable.

-Flexible Header (Flexible AppBar)
Description: The horoscope details page has a title bar (AppBar) that can be scrolled over the large image. This title expands or shrinks as the user scrolls the page.

How to Present: Using SliverAppBar, the page title is dynamically customized and displayed flexibly.

-Images and Content of Horoscopes
Description: Two different images (small and large) are presented for each horoscope. The small image is displayed in the horoscope list and the large image is displayed in the horoscope details page.
How to Present: Images of horoscopes are presented as visual content with Image.asset. These images are dynamically loaded according to the names of the horoscopes.

-Easy Navigation
Description: Users can easily switch between horoscopes. When you click on the details of a horoscope, you will be directed to the details page of that horoscope.

How to Present: When you click on a horoscope using the Navigator, you will be directed to a new page (HoroscopeDetails) with the details of that horoscope.

  
## Technologies Used
**flutter**

Why Used: Flutter is an SDK used for distributing cross-platform (iOS and Android) mobile applications. It allows creating applications that work on multiple platforms with a single codebase.
Why Used in the Project: In this project, Flutter is used to create user sections with a fast development process and rich widget support.

**Material Design**

Why Used: Material Design, a design language developed by Google, is used to create modern and improved user developments.
Why Used in the Project: The project provides a modern and user-friendly configuration with Material Design components such as AppBar, Card, ListTile, Scaffold.

**State Management (StatefulWidget and StatelessWidget)**

Why Used: Used for dynamic and static states in the application.
Why Used in the Project:
StatelessWidget: Used for unchanging data (pages like Horoskoplist).
StatefulWidget: Used for dynamic data and variable UI state management (like appBarColor change on the HoroskopDetails page).

**Navigator**

Why Used: It allows switching between pages (screens).
Why Used in the Project: It is used so that the user can switch to the horoscope detail page of the horoscope list (Navigator.of(context).push).

**Assets and images (Image.asset)**

Why Used: It is used to use static images within the application.
Why Used in the Project: It is used to show small and large images of horoscopes (horoscope SmallImage, horoscope BigImage).

**Palette Builder**

Why Used: It is used to dynamically determine the print (dominant) color of an image.
Why Used in the Project: The SliverAppBar background color on the horoscope detail page is used to change the color to match the horoscope image (appBarColorChange function).

**ListView and ListView.builder**

Why Used: It is used to dynamically display long data lists.
Why Used in the Project: It is used to dynamically create a list of horoscopes (on the horoscope list page).

**CustomScrollView and SliverAppBar**

Why Used: Used to create pages with scrolling (sliding) feature and flexible title (app bar).
Why Used in Project: Used to create a flexible title bar (SliverAppBar) and scrollable content in the horoscope detail.

**Model Class (Horoscope Class)**

Why Used: Used to keep data in a structure based on objective.
Why Used in Project: Used to store a model in a class in an orderly manner for horoscope retrieval (advertisement, date, detail, images).

  
## Ekran Görüntüleri

![](https://github.com/murattguzell/AstroTraits/blob/master/gif/astrogif.gif?raw=true)

  
