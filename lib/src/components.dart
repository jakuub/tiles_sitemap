// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library tiles_sitemap.components;

import 'package:tiles/tiles.dart';
import './register_component.dart';

ComponentDescriptionFactory urlset = registerSitemapComponent("urlset"),
    url = registerSitemapComponent("url"),
    loc = registerSitemapComponent("loc"),
    lastmod = registerSitemapComponent("lastmod"),
    changefreq = registerSitemapComponent("changefreq"),
    priority = registerSitemapComponent("priority");
