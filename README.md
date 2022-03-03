Figma design Study: 
https://www.figma.com/file/ldcI2ItZxrdFVaADQOREjT/Untitled?node-id=0%3A1

![Bezier Curve 1](https://user-images.githubusercontent.com/23015745/156585714-fe4c9af8-9269-4566-9bc7-f98f0c22e486.svg)


Flutter Clipper
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(-16.2849 * _xScaling,32.4487 * _yScaling);
    path.cubicTo(-7.48811 * _xScaling,39.6483 * _yScaling,2.93924 * _xScaling,44.2862 * _yScaling,13.5883 * _xScaling,48.263 * _yScaling,);
    path.cubicTo(47.9073 * _xScaling,61.0791 * _yScaling,53.7298 * _xScaling,72.9415 * _yScaling,186.252 * _xScaling,70.0125 * _yScaling,);
    path.cubicTo(337.145 * _xScaling,66.6774 * _yScaling,372.738 * _xScaling,4.56199 * _yScaling,472.999 * _xScaling,51.6697 * _yScaling,);
    path.cubicTo(573.26 * _xScaling,98.7774 * _yScaling,647.454 * _xScaling,63.7593 * _yScaling,810.879 * _xScaling,133.379 * _yScaling,);
    path.cubicTo(974.305 * _xScaling,202.998 * _yScaling,1025.44 * _xScaling,71.68 * _yScaling,1105.15 * _xScaling,98.7773 * _yScaling,);
    path.cubicTo(1184.85 * _xScaling,125.875 * _yScaling,1224.96 * _xScaling,150.959 * _yScaling,1306.67 * _xScaling,157.558 * _yScaling,);
    path.cubicTo(1420.04 * _xScaling,166.712 * _yScaling,1515.26 * _xScaling,133.379 * _yScaling,1591.91 * _xScaling,98.7773 * _yScaling,);
    path.cubicTo(1668.57 * _xScaling,64.1761 * _yScaling,1678.96 * _xScaling,157.558 * _yScaling,1762.86 * _xScaling,157.558 * _yScaling,);
    path.cubicTo(1832.43 * _xScaling,157.558 * _yScaling,1892.78 * _xScaling,84.762 * _yScaling,1911.37 * _xScaling,59.8867 * _yScaling,);
    path.cubicTo(1915.42 * _xScaling,54.466 * _yScaling,1918.53 * _xScaling,48.57 * _yScaling,1920.85 * _xScaling,42.2095 * _yScaling,);
    path.cubicTo(1931.19 * _xScaling,13.7438 * _yScaling,1957.85 * _xScaling,-69.0658 * _yScaling,1917.26 * _xScaling,-67.4089 * _yScaling,);
    path.cubicTo(1868.26 * _xScaling,-65.4089 * _yScaling,142.26 * _xScaling,-76.4089 * _yScaling,-1.73971 * _xScaling,-67.4089 * _yScaling,);
    path.cubicTo(-117.15 * _xScaling,-60.1958 * _yScaling,-48.2091 * _xScaling,6.32067 * _yScaling,-16.2849 * _xScaling,32.4487 * _yScaling,);
    path.cubicTo(-16.2849 * _xScaling,32.4487 * _yScaling,-16.2849 * _xScaling,32.4487 * _yScaling,-16.2849 * _xScaling,32.4487 * _yScaling,);
    return path;
 
  }
