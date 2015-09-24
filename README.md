# tiles_sitemap

A lightweight extension library for tiles to implement sitemap.org components to server side rendering.

## Usage

A simple usage example:

    import 'package:tiles_sitemap/tiles_sitemap.dart';
    import 'package:tiles/tiles_console.dart';
    
    main() {
      print(renderToString(urlset(
          children: [
        url(
            children: [
          loc(children: "http://example.com"),
          lastmod(children: "2015-09-24"),
          priority(children: "1"),
          changefreq(children: "daily"),
        ])
      ])));
    }


## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/jakuub/tiles_sitemap/issues