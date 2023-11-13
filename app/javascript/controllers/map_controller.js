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
      style: "mapbox://styles/mapbox/streets-v11",
      zoom: 14
    })
    // console.log(this.map);
    this.#addMarkerToMap()
  }

  #addMarkerToMap() {
    // console.log([this.markerValue.lng, this.markerValue.lat]);

    this.marker = new mapboxgl.Marker({
      color: "#142E84",
    })
      .setLngLat([this.markerValue.lng, this.markerValue.lat])
      .addTo(this.map)

    
  }
}
