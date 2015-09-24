// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library tiles_sitemap.test;

import 'package:tiles_sitemap/tiles_sitemap.dart';
import 'package:tiles/tiles.dart';
import 'package:tiles/tiles_console.dart';
import 'package:test/test.dart';

void main() {
  group('(Tiles Sitemap)', () {
    ComponentDescription cd =
        urlset(children: [url(children: [
          loc(children: "location"),
          lastmod(children: "lastMod"),
          priority(children: "Priority"),
          changefreq(children: "changeFreq"),
        ])]);
    
    String result;

    setUp(() {
      result = renderToString(cd);
    });

    test('contains tags names', () {
      expect(result, contains("urlset"));
      expect(result, contains("url"));
      expect(result, contains("loc"));
      expect(result, contains("location"));
      expect(result, contains("lastmod"));
      expect(result, contains("lastMod"));
      expect(result, contains("priority"));
      expect(result, contains("Priority"));
      expect(result, contains("changefreq"));
      expect(result, contains("changeFreq"));
    });
    
    test('is in specified format', () {
      expect(result, equals("<urlset><url><loc>location</loc><lastmod>lastMod</lastmod><priority>Priority</priority><changefreq>changeFreq</changefreq></url></urlset>"));
    });
  });
}
