export default {
    name: 'TheLightboxComponent',

    props: ['item'],

    emits: ['closelightbox'],
    

    template: `
    <section class="lightbox">
    
        <img @click="closeLB" src="images/closeIcon.png" class="lightbox_close">
        
        <div>
        <img :src='"images/" + item.headerpic' alt="lb-header img">

            <h3>{{item.name}}</h3>
            <article>{{item.type}}<span>{{item.price}}</span></article>

            <p class="lb_text">{{item.desc}}</p>
            <p class="lb_text">{{item.specs}}</p>
        <img :src='"images/" + item.morepics' alt="lb-pics img">
        </div>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelightbox');
        }
    
    }
}