import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
// import { loadDynamicBannerText } from '../components/banner';
// loadDynamicBannerText();


import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
// ^^^ !For Update Navbar on Scroll. REF: https://kitt.lewagon.com/knowledge/lectures/05-Rails%2F04-Rails-mister-cocktail#source
