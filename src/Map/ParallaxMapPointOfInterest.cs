using TaleWorlds.Library;

namespace BRE_Casual.Map
{
    /// <summary>
    /// Represents a point of interest on the map with parallax effect configuration
    /// </summary>
    public class ParallaxMapPointOfInterest
    {
        /// <summary>
        /// The original position of the point of interest
        /// </summary>
        public Vec2 OriginalPosition { get; set; }

        /// <summary>
        /// The current visual position with parallax applied
        /// </summary>
        public Vec2 CurrentPosition { get; set; }

        /// <summary>
        /// Parallax factor (0 = moves with camera, 1 = no parallax, >1 = reverse parallax)
        /// Lower values make the POI appear further away
        /// </summary>
        public float ParallaxFactor { get; set; }

        /// <summary>
        /// Optional depth layer for the POI (can be used for sorting)
        /// </summary>
        public float DepthLayer { get; set; }

        /// <summary>
        /// Whether this POI should be affected by parallax
        /// </summary>
        public bool EnableParallax { get; set; }

        public ParallaxMapPointOfInterest(Vec2 position, float parallaxFactor = 1.0f, float depthLayer = 0.0f, bool enableParallax = true)
        {
            OriginalPosition = position;
            CurrentPosition = position;
            ParallaxFactor = parallaxFactor;
            DepthLayer = depthLayer;
            EnableParallax = enableParallax;
        }

        /// <summary>
        /// Update the visual position based on camera position and zoom
        /// </summary>
        /// <param name="cameraPosition">Current camera position</param>
        /// <param name="referenceCameraPosition">Reference camera position (usually the initial or center position)</param>
        /// <param name="zoomLevel">Current zoom level (1.0 = default, >1 = zoomed in, <1 = zoomed out)</param>
        public void UpdateParallaxPosition(Vec2 cameraPosition, Vec2 referenceCameraPosition, float zoomLevel)
        {
            if (!EnableParallax)
            {
                CurrentPosition = OriginalPosition;
                return;
            }

            // Calculate camera movement delta
            Vec2 cameraDelta = cameraPosition - referenceCameraPosition;

            // Apply parallax factor to create depth effect
            // Objects with lower parallax factor (further away) move less with camera
            Vec2 parallaxOffset = cameraDelta * (1.0f - ParallaxFactor);

            // Apply zoom scaling - when zooming in, parallax effect should scale
            // This ensures the parallax effect is consistent across zoom levels
            parallaxOffset *= zoomLevel;

            // Calculate final position
            CurrentPosition = OriginalPosition + parallaxOffset;
        }
    }
}
