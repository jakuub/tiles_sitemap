// Copyright (c) 2015, Jakub Uhrik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library tiles_sitemap.register_component;

import "package:tiles/tiles.dart";

ComponentDescriptionFactory registerSitemapComponent(String tagname) {
  return registerComponent(({Map props,
      Iterable<ComponentDescription> children}) => new DomComponent(
      props: props,
      children: children,
      tagName: tagname,
      pair: true,
      svg: false));
}
