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
      lbData: {},
      showLB: false,
      fname: "",
      lname: "",
      email: "",
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

        this.showLB = true;
    },

    sendForm() {
      console.log(this.fname, this.lname, this.email);
    },
  }

  
}).mount("#app");
