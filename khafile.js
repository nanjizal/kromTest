let project = new Project('krom test');
project.addAssets('Assets/**');
project.addShaders('Shaders/**');
project.addSources('src');
project.windowOptions.width = 1024;
project.windowOptions.height = 1024;
resolve( project );