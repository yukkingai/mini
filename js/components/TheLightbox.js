export default {
    name: 'TheLightboxComponent',

    props: ['item'],

    emits: ['closelightbox'],
    

    template: `
    <section class="lightbox">
        <img :src='"images/" + header-pic' alt="lb-header img">
        <h3>{{name}}</h3>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelightbox');
        }
    
    }
}