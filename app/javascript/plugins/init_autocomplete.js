import places from 'places.js';

const initAutocomplete = () => {
  const locationInput = document.getElementById("post_location")
    if (location) {
      places({ container: locationInput });
    }
}

export { initAutocomplete };
