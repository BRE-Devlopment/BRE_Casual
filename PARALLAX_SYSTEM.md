# Parallax Map System for BRE Casual

## Overview

The parallax map system allows points of interest (POIs) on the campaign map to have a depth effect when the camera moves or zooms. This creates a more dynamic and visually interesting map experience.

## How It Works

### Core Components

1. **ParallaxMapPointOfInterest**: Represents a single POI with parallax properties
2. **ParallaxMapManager**: Manages all parallax POIs and updates their positions
3. **ParallaxMapBehavior**: Campaign behavior that integrates the system with the game

### Parallax Factor

The parallax factor determines how a POI moves relative to camera movement:

- **0.0**: Moves with the camera (far background, appears very distant)
- **0.5**: Moves less than camera (mid-background)
- **1.0**: No parallax effect (standard POI, moves normally with map)
- **1.5**: Moves more than camera (foreground)
- **2.0**: Exaggerated movement (near foreground)

### Zoom Integration

The system automatically adjusts parallax effects based on zoom level:
- When zoomed in (>1.0), parallax effects scale proportionally
- When zoomed out (<1.0), parallax effects are reduced
- This maintains visual consistency across all zoom levels

## Usage

### Adding a Parallax POI

```csharp
using BRE_Casual.Map;
using TaleWorlds.Library;

// Create a new parallax POI
var poi = new ParallaxMapPointOfInterest(
    position: new Vec2(500f, 500f),      // Map position
    parallaxFactor: 0.7f,                // Parallax effect strength
    depthLayer: 0.0f,                    // Optional depth sorting
    enableParallax: true                 // Enable/disable parallax
);

// Add to manager
ParallaxMapManager.Instance.AddParallaxPOI(poi);
```

### Updating Camera (from Map Screen)

```csharp
// In your map screen's tick or update method
ParallaxMapManager.Instance.UpdateCamera(
    cameraPosition: currentCameraPos,
    zoomLevel: currentZoom
);

// Get updated POI position
Vec2 visualPosition = poi.CurrentPosition;
```

### Removing a POI

```csharp
ParallaxMapManager.Instance.RemoveParallaxPOI(poi);
```

## Configuration Examples

### Far Background (Mountains, Sky)
```csharp
new ParallaxMapPointOfInterest(position, parallaxFactor: 0.2f)
```

### Mid-Ground (Buildings, Trees)
```csharp
new ParallaxMapPointOfInterest(position, parallaxFactor: 0.7f)
```

### Foreground (Characters, Interactive Objects)
```csharp
new ParallaxMapPointOfInterest(position, parallaxFactor: 1.3f)
```

## Integration with BRE_Core

This module depends on BRE_Core and can be extended to work with other BRE modules. The parallax system is designed to be non-intrusive and can be enabled/disabled per POI.

## Building

The mod requires Mount & Blade II: Bannerlord SDK. Set the `BANNERLORD_GAME_DIR` environment variable to your game installation directory before building.

```bash
cd src
dotnet build
```

The compiled DLL will be placed in `bin/Win64_Shipping_Client/`.
