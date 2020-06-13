bool isDesktopHeight(var constraints) {
  print(constraints.heightConstraints().maxHeight);
  return constraints.heightConstraints().maxHeight > 1100;
}

bool isMedium(var constraints) {
  return constraints.maxWidth <= 1000;
}

bool isSmall(var constraints) {
  return constraints.maxWidth <= 650;
}
