using System.Collections.Generic;
using TaleWorlds.Library;

namespace BRE_Casual.Map
{
    /// <summary>
    /// Manages parallax points of interest on the campaign map
    /// </summary>
    public class ParallaxMapManager
    {
        private static ParallaxMapManager _instance;
        public static ParallaxMapManager Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new ParallaxMapManager();
                }
                return _instance;
            }
        }

        private List<ParallaxMapPointOfInterest> _parallaxPOIs;
        private Vec2 _referenceCameraPosition;
        private Vec2 _currentCameraPosition;
        private float _currentZoomLevel;
        private bool _isInitialized;

        private ParallaxMapManager()
        {
            _parallaxPOIs = new List<ParallaxMapPointOfInterest>();
            _referenceCameraPosition = Vec2.Zero;
            _currentCameraPosition = Vec2.Zero;
            _currentZoomLevel = 1.0f;
            _isInitialized = false;
        }

        /// <summary>
        /// Initialize the manager with reference camera position
        /// </summary>
        public void Initialize(Vec2 referenceCameraPosition)
        {
            _referenceCameraPosition = referenceCameraPosition;
            _currentCameraPosition = referenceCameraPosition;
            _isInitialized = true;
        }

        /// <summary>
        /// Add a parallax POI to the manager
        /// </summary>
        public void AddParallaxPOI(ParallaxMapPointOfInterest poi)
        {
            if (!_parallaxPOIs.Contains(poi))
            {
                _parallaxPOIs.Add(poi);
            }
        }

        /// <summary>
        /// Remove a parallax POI from the manager
        /// </summary>
        public void RemoveParallaxPOI(ParallaxMapPointOfInterest poi)
        {
            _parallaxPOIs.Remove(poi);
        }

        /// <summary>
        /// Clear all parallax POIs
        /// </summary>
        public void ClearAllPOIs()
        {
            _parallaxPOIs.Clear();
        }

        /// <summary>
        /// Get all registered parallax POIs
        /// </summary>
        public IReadOnlyList<ParallaxMapPointOfInterest> GetAllPOIs()
        {
            return _parallaxPOIs.AsReadOnly();
        }

        /// <summary>
        /// Update camera position and zoom level, then update all POI positions
        /// </summary>
        public void UpdateCamera(Vec2 cameraPosition, float zoomLevel)
        {
            if (!_isInitialized)
            {
                Initialize(cameraPosition);
            }

            _currentCameraPosition = cameraPosition;
            _currentZoomLevel = zoomLevel;

            // Update all POIs with new camera position and zoom
            foreach (var poi in _parallaxPOIs)
            {
                poi.UpdateParallaxPosition(_currentCameraPosition, _referenceCameraPosition, _currentZoomLevel);
            }
        }

        /// <summary>
        /// Reset the reference camera position (useful when centering the map)
        /// </summary>
        public void ResetReferenceCameraPosition(Vec2 newReferencePosition)
        {
            _referenceCameraPosition = newReferencePosition;
        }

        /// <summary>
        /// Get the current camera position
        /// </summary>
        public Vec2 GetCurrentCameraPosition()
        {
            return _currentCameraPosition;
        }

        /// <summary>
        /// Get the current zoom level
        /// </summary>
        public float GetCurrentZoomLevel()
        {
            return _currentZoomLevel;
        }
    }
}
