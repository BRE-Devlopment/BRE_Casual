using TaleWorlds.CampaignSystem;
using TaleWorlds.Library;
using TaleWorlds.Core;

namespace BRE_Casual.Map
{
    /// <summary>
    /// Campaign behavior that manages parallax POIs on the map screen
    /// </summary>
    public class ParallaxMapBehavior : CampaignBehaviorBase
    {
        private ParallaxMapManager _manager;

        public ParallaxMapBehavior()
        {
            _manager = ParallaxMapManager.Instance;
        }

        public override void RegisterEvents()
        {
            // Register to campaign events if needed
            CampaignEvents.OnSessionLaunchedEvent.AddNonSerializedListener(this, OnSessionLaunched);
        }

        public override void SyncData(IDataStore dataStore)
        {
            // Sync data if persistence is needed
        }

        private void OnSessionLaunched(CampaignGameStarter starter)
        {
            // Initialize the parallax system when campaign starts
            InitializeParallaxSystem();
        }

        private void InitializeParallaxSystem()
        {
            // Initialize with default reference position (center of map)
            Vec2 centerPosition = new Vec2(512f, 512f); // Default Bannerlord map center
            _manager.Initialize(centerPosition);

            // Example: Add some default parallax POIs
            // These would typically be loaded from data files or created dynamically
            AddExampleParallaxPOIs();
        }

        private void AddExampleParallaxPOIs()
        {
            // Example POIs with different parallax factors
            // Parallax factor: 0.0 = far background, 1.0 = no parallax, 2.0 = foreground
            
            // Background layer POIs (appear further away, move less with camera)
            var backgroundPOI1 = new ParallaxMapPointOfInterest(
                new Vec2(400f, 400f), 
                parallaxFactor: 0.3f, 
                depthLayer: -1.0f, 
                enableParallax: true
            );
            _manager.AddParallaxPOI(backgroundPOI1);

            // Mid-ground layer POIs (normal movement)
            var midgroundPOI = new ParallaxMapPointOfInterest(
                new Vec2(500f, 500f), 
                parallaxFactor: 0.7f, 
                depthLayer: 0.0f, 
                enableParallax: true
            );
            _manager.AddParallaxPOI(midgroundPOI);

            // Foreground layer POIs (appear closer, move more with camera)
            var foregroundPOI = new ParallaxMapPointOfInterest(
                new Vec2(600f, 600f), 
                parallaxFactor: 1.3f, 
                depthLayer: 1.0f, 
                enableParallax: true
            );
            _manager.AddParallaxPOI(foregroundPOI);
        }

        /// <summary>
        /// Update the parallax system with current camera state
        /// This should be called from the map screen's tick method
        /// </summary>
        public void UpdateParallaxSystem(Vec2 cameraPosition, float zoomLevel)
        {
            _manager.UpdateCamera(cameraPosition, zoomLevel);
        }

        /// <summary>
        /// Get the manager instance for direct access
        /// </summary>
        public ParallaxMapManager GetManager()
        {
            return _manager;
        }
    }
}
