import CarThumb from "./components/TheCarComponent.js";
import LightBox from "./components/TheLightbox.js";

const { createApp } = Vue;

createApp({
  
  created() {
    
    fetch("./data.json")
      .then((res) => res.json())
      .then((data) => {
       
        this.carData = data;
      })
      .catch((error) => console.error(error));
  },

  data() {
    return {
      carData: {},
      lbData: {}
    };
  },

  components: {
    // custom html tag
    thecarthumb: CarThumb, 
    thelightbox: LightBox // register the lb
  },

  methods: {
    loadLightBox(car) {
        this.lbData = car;
    },

    sendForm() {
      console.log(this.fname, this.lname, this.email);
    },
  }

  
}).mount("#app");
