export default {
  // hv to start with this in order to run the template
  name: "TheProfComponent",

  profs: ["item"],

  template: `<section>
        <h1 class="prof_name">{{ name }}</h1>
        </section>
    `,

  data() {
    return {
      name: "some generic name",
    };
  },
};
