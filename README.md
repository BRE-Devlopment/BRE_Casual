# BRE_Casual

A Mount & Blade II: Bannerlord mod for the BRE (Banner & Realism Enhancement) mod pack. This mod adds enhanced visual effects and gameplay features for multiplayer casual matches.

## Features

### Parallax Map System
Points of interest on the campaign map now support parallax effects, creating a sense of depth when the camera moves or zooms. This makes the map feel more dynamic and visually interesting.

- **Depth Layers**: POIs can be placed on different depth layers (background, mid-ground, foreground)
- **Zoom-Aware**: Parallax effects scale appropriately with zoom level
- **Configurable**: Each POI can have its own parallax factor and can be toggled on/off
- **Performance Optimized**: Efficient updates only when camera position or zoom changes

See [PARALLAX_SYSTEM.md](PARALLAX_SYSTEM.md) for detailed documentation.

## Installation

1. Make sure you have Mount & Blade II: Bannerlord installed
2. Install the BRE_Core mod (required dependency)
3. Copy this mod folder to your Bannerlord Modules directory
4. Enable the mod in the Bannerlord launcher

## Building from Source

### Prerequisites
- .NET Framework 4.7.2 or higher
- Mount & Blade II: Bannerlord SDK
- Set the `BANNERLORD_GAME_DIR` environment variable to your game installation directory

### Build Steps

**Windows:**
```cmd
build.bat
```

**Linux/Mac:**
```bash
./build.sh
```

The compiled DLL will be placed in `bin/Win64_Shipping_Client/`.

## Development

### Project Structure
```
BRE_Casual/
├── src/                          # Source code
│   ├── Map/                      # Map-related features
│   │   ├── ParallaxMapPointOfInterest.cs
│   │   ├── ParallaxMapManager.cs
│   │   └── ParallaxMapBehavior.cs
│   ├── Examples/                 # Example implementations
│   └── SubModule.cs              # Main mod entry point
├── ModuleData/                   # Game data files
├── PARALLAX_SYSTEM.md           # Parallax system documentation
├── SubModule.xml                # Mod configuration
└── build.sh / build.bat         # Build scripts
```

### Adding New Features

The mod uses a behavior-based architecture. To add new features:

1. Create a new behavior class extending `CampaignBehaviorBase`
2. Register it in `SubModule.cs` in the `OnGameStart` method
3. Implement your feature logic in the behavior

See `ParallaxMapBehavior.cs` for an example.

## Dependencies

- Native (Bannerlord base game)
- Multiplayer (Bannerlord multiplayer module)
- BRE_Core (BRE mod pack core module)

## Contributing

Contributions are welcome! Please ensure your code follows the existing style and includes appropriate documentation.

## License

This mod is part of the BRE mod pack. Please refer to the main BRE project for licensing information.