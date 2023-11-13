import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl";

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    // console.log(this.markerValue.lng);
    // console.log(this.markerValue.lat);

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      center: [this.markerValue.lng, this.markerValue.lat],
      style: "mapbox://styles/mapbox/streets-v10",
      zoom: 15
    })
    // console.log(this.map);
    this.#addMarkerToMap()
  }

  #addMarkerToMap() {
    // console.log([this.markerValue.lng, this.markerValue.lat]);
    new mapboxgl.Marker()
      .setLngLat([100.3881284, 13.6478507])
      .addTo(this.map)
  }
}
