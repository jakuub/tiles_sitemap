// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

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
