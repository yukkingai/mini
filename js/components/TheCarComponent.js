export default {

  name: 'TheCarComponent',

  emits: ['loadlbdata'],

  props: {
    car: Object
  },

  template:  `
  <li @click="loadLBData">
    
      <img :src='"images/" + car.pic' alt="model img" style="width: 300px">
      <h5>{{car.name}}</h5>
    
  </li>
  `,


  methods: {
    loadLBData() {
        this.$emit('loadlbdata', this.car);
    }
}
};
