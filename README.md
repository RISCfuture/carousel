Carousel
========

A Ruby on Rails engine that adds an image carousel to your application.

|             |                                                                                                         |
|:------------|:--------------------------------------------------------------------------------------------------------|
| **Author**  | Tim Morgan                                                                                              |
| **Version** | 1.0 (Apr 20, 2012)                                                                                      |
| **License** | Released under the MIT license. Portions released under a different license (see _Sub-Licenses_ below). |

About
-----

This gem adds assets to your Rails application allowing you to display a simple
but effective carousel of images. The carousel can be displayed horizontally or
vertically. It uses Ajax to incrementally load images rather than loading them
all at once.

### Requirements

* **Rails 3.1**: This gem uses Rails engines.
* **jQuery**: The carousel and lightbox is rendered and managed using jQuery.
* **Sass**: The carousel layout is written using SCSS.

#### Optional

* **Paperclip**: The carousel includes native support for Paperclip, but does
  not depend on it.

Installation
------------

To use this gem, add to your Gemfile:

```` ruby
gem 'carousel'
````

To your `application.css` file (or some other CSS manifest file), add:

 ```` css
 /*
  *= require jquery.lightbox-0.5
  *= require carousel
  */
 ````

 To your `application.js` file (or some other JavaScript manifest file), add:

 ```` javascript
 //= require jquery.lightbox-0.5
 //= require carousel
 ````

 You may also need to add the following if it is not already there:

 ```` javascript
 //= require jquery
 ````

Usage
-----

The carousel loads images using an Ajax action. You will need to write such an
action that returns JSON information about the images the carousel should load
in an "infinite scrolling" manner. The JSON should have the format shown in the
following example:

```` json
[
    {
        "caption": "Parents' house from the air",
        "id": 26,
        "preview_url": "http://s3.amazonaws.com/flightseein/photographs/26/images/carousel-ac52ff7c1f101e9fe86b1bbe0c7e8dab.png",
        "url": "http://s3.amazonaws.com/flightseein/photographs/26/images/original-ac52ff7c1f101e9fe86b1bbe0c7e8dab.jpeg"
    },
    {
        "caption": "Mt. Diablo",
        "id": 27,
        "preview_url": "http://s3.amazonaws.com/flightseein/photographs/27/images/carousel-9bcf168a861a840be7cdd2914bb3e539.png",
        "url": "http://s3.amazonaws.com/flightseein/photographs/27/images/original-9bcf168a861a840be7cdd2914bb3e539.jpeg"
    },
    {
        "caption": "UC Berkeley",
        "id": 28,
        "preview_url": "http://s3.amazonaws.com/flightseein/photographs/28/images/carousel-663d4602da82c6b2bd0f88cd5be2da7d.png",
        "url": "http://s3.amazonaws.com/flightseein/photographs/28/images/original-663d4602da82c6b2bd0f88cd5be2da7d.jpeg"
    }
]
````

All fields are required except for `caption`.

Your controller should also correctly manage the infinite-scrolling feature by
accepting a parameter `last_record`. This parameter will be the ID of the last
photo previously loaded. You should load the next group of photos from that ID.
What you define "ID" as, and how you order the photos, and how many photos you
include in a batch, are all up to you.

In your view, instantiate a Carousel object like so:

```` javascript+erb
$('#carousel-container').carousel("<%= photographs_url %>", 'horizontal');
````

where `$('#carousel-container')` is the jQuery-wrapped DOM element to contain
the carousel, and `photographs_url` is the URL endpoint for the controller you
wrote above. The second parameter can be either `horizontal` or `vertical` and
describes the orientation of your carousel.

Sub-Licenses
------------

Portions of this code were written by
[Leandro Vieira Pinho](http://leandrovieira.com). These portions are
distributed under the CCAttribution-Share-Alike 2.5 (Brazil) license.
