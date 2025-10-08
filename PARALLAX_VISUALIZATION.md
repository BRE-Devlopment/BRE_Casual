# Parallax Effect Visualization

## How Parallax Works

The parallax effect creates an illusion of depth by making objects at different distances move at different speeds relative to the camera.

### Camera Movement Without Parallax
```
Before:                    After (camera moved right):
|                           |
| [BG] [MG]  [FG]          | [BG] [MG]  [FG]
|                           |
All objects move together   All objects stay in same relative position
```

### Camera Movement With Parallax
```
Before:                    After (camera moved right):
|                           |
| [BG] [MG]  [FG]          |  [BG]  [MG]   [FG]
|                           |
                            Background moves less (appears distant)
                            Midground moves normally
                            Foreground moves more (appears close)
```

## Parallax Factor Examples

### Background (Factor = 0.2)
- Moves 20% of camera movement
- Appears very far away
- Good for: Mountains, sky, distant scenery

### Midground (Factor = 0.7)
- Moves 70% of camera movement
- Appears at medium distance
- Good for: Buildings, forests, large structures

### No Parallax (Factor = 1.0)
- Moves 100% with camera (standard behavior)
- Appears at camera plane
- Good for: Standard POIs, settlements

### Foreground (Factor = 1.3)
- Moves 130% of camera movement
- Appears closer than camera
- Good for: Player markers, UI elements, quest markers

## Zoom Integration

### Zoomed Out (zoomLevel = 0.5)
```
Wide view of map
Parallax effects are reduced by 50%
Maintains proportional depth perception
```

### Normal Zoom (zoomLevel = 1.0)
```
Standard map view
Full parallax effects
Default depth perception
```

### Zoomed In (zoomLevel = 2.0)
```
Close-up view
Parallax effects doubled
Exaggerated depth perception
```

## Mathematical Formula

```
parallaxOffset = (cameraPosition - referenceCameraPosition) * (1.0 - parallaxFactor) * zoomLevel
finalPosition = originalPosition + parallaxOffset
```

### Example Calculation:

Given:
- Original POI position: (500, 500)
- Reference camera: (512, 512)
- Current camera: (612, 512) - moved 100 units right
- Parallax factor: 0.3
- Zoom level: 1.0

Calculate:
- Camera delta: (612-512, 512-512) = (100, 0)
- Parallax offset: (100, 0) * (1.0 - 0.3) * 1.0 = (70, 0)
- Final position: (500, 500) + (70, 0) = (570, 500)

Result: POI moved 70 units right (less than camera's 100), appearing distant.

## Visual Layers Recommendation

```
Layer        | Parallax Factor | Use Case
-------------|-----------------|----------------------------------
Far BG       | 0.0 - 0.3       | Sky, mountains, very distant
Background   | 0.3 - 0.5       | Distant forests, far castles
Mid-Ground   | 0.5 - 0.8       | Near structures, large objects
Standard     | 0.8 - 1.0       | Normal POIs, settlements
Near FG      | 1.0 - 1.3       | Close objects, markers
Foreground   | 1.3 - 2.0       | UI elements, player markers
```

## Tips for Best Results

1. **Use at least 3 layers** (background, mid, foreground) for noticeable depth
2. **Keep factor differences around 0.3-0.5** between layers for smooth transitions
3. **Test at different zoom levels** to ensure effect scales well
4. **Group similar objects** on the same layer for consistency
5. **Avoid extreme factors** (< 0.0 or > 2.0) unless intentional
