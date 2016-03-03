// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html' as html;
import 'package:stagexl/stagexl.dart';


Shape createNewCircle(num x, num y, num r, Color clr) {
  var shape = new Shape();
  shape.graphics.circle(x, y, r);
  shape.graphics.fillColor(clr);
  return shape;

}

void main() {
  var canvas = html.querySelector('#stage');
  var stage = new Stage(canvas);
  var renderLoop = new RenderLoop();
  renderLoop.addStage(stage);

  stage.addChild(createNewCircle(100, 100, 60, Color.Red));
  stage.addChild(createNewCircle(300, 100, 60, Color.Blue));
  stage.addChild(createNewCircle(500, 100, 60, Color.Green));

}
