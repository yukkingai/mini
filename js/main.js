// all imports have to happen here at the top
import ProfPancel from "./components/TheProfComponent.js";

// instantiate the Vue instance here
const { createApp } = Vue;

createApp({
  // ALWAYS get your remote data here, in the created lifecycle hook, using fetch or the dataMiner
  created() {
    // fetch the json data and pass it to the Vue instance
    fetch("./data.json")
      .then((res) => res.json())
      .then((data) => {
        // throw the data into the Vue instance
        // the "this" keyword ALWAYS refers to the Vue instance itself
        this.dynamicData = data;
      })
      .catch((error) => console.error(error));
  },

  data() {
    return {
      message: "Hello Vue!",
      anotherMessage: "Hey, I am good!",
      profs: ["Joe", "John", "Jarrd", "Justin"],
      yetAnotherMessage: "more data",
      dynamicData: {},
      currentProf: {},
      username: "",
      password: "",
    };
  },

  methods: {
    logClicked() {
      console.log("click on a button");
    },

    showData(item) {
      // debugger;
      this.currentProf = item;
    },

    sendForm() {
      console.log(this.username, this.password);
    },
  },

  components: {
    profpancel: ProfPancel,
  },
}).mount("#app");
