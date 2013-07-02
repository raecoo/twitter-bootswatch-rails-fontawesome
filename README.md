# Twitter Bootswatch Rails Font Awesome gem

  - Use to extend your [Twitter Bootswatch Rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails) project with Font Awesome
  - Integrates [Font Awesome](http://fortawesome.github.io/Font-Awesome) less into the Rails 3.1+ Asset Pipeline
  - Easily override Font Awesome variables per bootswatch theme

## Installation

```ruby

gem 'twitter-bootswatch-rails'
gem 'twitter-bootswatch-rails-fontawesome'

gem 'twitter-bootswatch-rails-helpers'
```

or you can install from latest build;

```ruby
gem 'twitter-bootswatch-rails-fontawesome', :git => 'git://github.com/scottvrosenthal/twitter-bootswatch-rails-fontawesome.git'
```

Run bundle from command line

    bundle


## Usage defaults

To add Font Awesome to your [Twitter Bootswatch Rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails) project:

In application.css or [theme_name] css file just do the following:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require fontawesome
*/
```

If you need the ie7 fix:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require fontawesome
 *= require fontawesome/font-awesome-ie7
*/
```

## Usage for theme_name customization

If you don't provide a [theme_name] the value defaults to **bootswatch** and adds directives to your application.css files.


Usage:


    rails g bootswatch:fontawesome:install [theme_name]

Example:


    rails g bootswatch:fontawesome:install admin
    rails g bootswatch:fontawesome:install storefront


Any of the above commands create a [theme_name]/font-awesome.less file for the passed in [theme_name].

If you had an existing admin bootswatch theme here's the contents of admin/font-awesome.less:


```less
// Bootstrap 3.1.1
// Bootswatch Font Awesome

// Variables
// --------------------------

@borderColor:        #eee;
@iconMuted:          #eee;
@iconLight:          #fff;
@iconDark:           #333;

// Imports
// --------------------------

@import "fontawesome/mixins";
@import "fontawesome/path";
@import "fontawesome/core";
@import "fontawesome/bootstrap";
@import "fontawesome/extras";
@import "fontawesome/icons";
```

Then in the [theme_name] css file just do the following:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require [theme_name]/font-awesome
*/
```

## Changelog

  - v3.1.1.3
    * Initial release
    * Updated to use Font Awesome v3.1.1
  - v3.1.1.4
    * Rails 4 bug fix for generator error
  - v3.2.1.0
    * Updated to use Font Awesome v3.2.1