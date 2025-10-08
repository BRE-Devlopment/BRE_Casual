using BRE_Casual.Map;
using TaleWorlds.Library;
using TaleWorlds.CampaignSystem;
using TaleWorlds.ScreenSystem;

namespace BRE_Casual.Examples
{
    /// <summary>
    /// Example showing how to integrate the parallax system with a custom map screen
    /// This is a reference implementation and should be adapted to your specific needs
    /// </summary>
    public class ParallaxMapScreenExample
    {
        private ParallaxMapManager _parallaxManager;
        private Vec2 _lastCameraPosition;
        private float _lastZoomLevel;

        public ParallaxMapScreenExample()
        {
            _parallaxManager = ParallaxMapManager.Instance;
            _lastCameraPosition = Vec2.Zero;
            _lastZoomLevel = 1.0f;
        }

        /// <summary>
        /// Initialize the parallax system with map settings
        /// Call this when your map screen is initialized
        /// </summary>
        public void InitializeParallax()
        {
            // Set the reference camera position (typically the map center)
            Vec2 mapCenter = new Vec2(512f, 512f);
            _parallaxManager.Initialize(mapCenter);

            // Create some example POIs with different parallax depths
            CreateExamplePOIs();
        }

        /// <summary>
        /// Update the parallax system - call this in your screen's tick/update method
        /// </summary>
        public void UpdateParallax(Vec2 currentCameraPosition, float currentZoomLevel)
        {
            // Only update if camera or zoom changed
            if (!_lastCameraPosition.Equals(currentCameraPosition) || 
                !MathF.Approximately(_lastZoomLevel, currentZoomLevel))
            {
                _parallaxManager.UpdateCamera(currentCameraPosition, currentZoomLevel);
                
                _lastCameraPosition = currentCameraPosition;
                _lastZoomLevel = currentZoomLevel;
            }
        }

        /// <summary>
        /// Render POIs with parallax - call this in your screen's render method
        /// </summary>
        public void RenderParallaxPOIs()
        {
            var pois = _parallaxManager.GetAllPOIs();
            
            foreach (var poi in pois)
            {
                // Use poi.CurrentPosition instead of poi.OriginalPosition for rendering
                Vec2 screenPosition = poi.CurrentPosition;
                
                // Your rendering code here
                // Example: DrawIcon(screenPosition, poi.DepthLayer);
            }
        }

        /// <summary>
        /// Create example POIs with different parallax settings
        /// </summary>
        private void CreateExamplePOIs()
        {
            // Layer 1: Far background (mountains, distant objects)
            // These move very little with camera, creating depth
            AddParallaxPOI(new Vec2(300f, 300f), 0.2f, -2.0f, "Far Mountain");
            AddParallaxPOI(new Vec2(700f, 300f), 0.3f, -2.0f, "Distant Hills");

            // Layer 2: Mid background (forests, large structures)
            AddParallaxPOI(new Vec2(400f, 400f), 0.5f, -1.0f, "Forest");
            AddParallaxPOI(new Vec2(600f, 450f), 0.6f, -1.0f, "Castle");

            // Layer 3: Normal layer (towns, settlements)
            // Standard POIs with minimal or no parallax
            AddParallaxPOI(new Vec2(500f, 500f), 0.9f, 0.0f, "Town");
            AddParallaxPOI(new Vec2(550f, 480f), 1.0f, 0.0f, "Village");

            // Layer 4: Foreground (characters, markers, interactive elements)
            // These move more than camera, appearing closer
            AddParallaxPOI(new Vec2(520f, 520f), 1.3f, 1.0f, "Player Position");
            AddParallaxPOI(new Vec2(480f, 530f), 1.5f, 1.5f, "Quest Marker");
        }

        /// <summary>
        /// Helper method to add a POI with parallax
        /// </summary>
        private void AddParallaxPOI(Vec2 position, float parallaxFactor, float depthLayer, string debugName)
        {
            var poi = new ParallaxMapPointOfInterest(
                position,
                parallaxFactor,
                depthLayer,
                enableParallax: true
            );
            
            _parallaxManager.AddParallaxPOI(poi);
            
            // For debugging
            InformationManager.DisplayMessage(
                new InformationMessage($"Added parallax POI: {debugName} at {position} (factor: {parallaxFactor})")
            );
        }

        /// <summary>
        /// Example of dynamically adjusting parallax for a specific POI
        /// </summary>
        public void AdjustPOIParallax(ParallaxMapPointOfInterest poi, float newParallaxFactor)
        {
            poi.ParallaxFactor = newParallaxFactor;
            
            // Force update to see changes immediately
            _parallaxManager.UpdateCamera(_lastCameraPosition, _lastZoomLevel);
        }

        /// <summary>
        /// Example of toggling parallax on/off for a POI
        /// </summary>
        public void TogglePOIParallax(ParallaxMapPointOfInterest poi)
        {
            poi.EnableParallax = !poi.EnableParallax;
            
            // Force update to see changes immediately
            _parallaxManager.UpdateCamera(_lastCameraPosition, _lastZoomLevel);
        }

        /// <summary>
        /// Clean up when screen is closed
        /// </summary>
        public void Cleanup()
        {
            _parallaxManager.ClearAllPOIs();
        }
    }
}
