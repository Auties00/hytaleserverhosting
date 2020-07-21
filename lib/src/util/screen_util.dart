bool isDesktopHeight(var constraints) => constraints.heightConstraints().maxHeight > 1100;

bool isMedium(var constraints) => constraints.maxWidth <= 1000;

bool isSmall(var constraints) => constraints.maxWidth <= 650;