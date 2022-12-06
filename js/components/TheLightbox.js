export default {
    name: 'TheLightboxComponent',

    props: ['item'],

    emits: ['closelightbox'],
    

    template: `
    <section class="lightbox">
    
        <header class="lb-header">
            <img src="images/logo-footer.svg" class="lightbox-logo">
            <img @click="closeLB" src="images/closeIcon.png" class="lightbox_close">
        </header>
        
        <div>
            <img class="lb-hero" :src='"images/" + item.headerpic' alt="lb-header img">

                <h2>{{item.name}}</h2>

            <div class="lb-content">
                <h3>Features</h3><br>
                <div class="one-item">
                    <p class="lb_text">{{item.desc}}</p>
                </div>

                <div class="specs-section">
                    <h3>Specs</h3><br>
                    <div>
                        <article>{{item.type}}</article>
                        <article>{{item.price}}</article>
                    </div>

                    <ul class="specs">
                        <li class="lb_text">{{item.specs[0]}}</li>
                        <li class="lb_text">{{item.specs[1]}}</li>
                        <li class="lb_text">{{item.specs[2]}}</li>
                        <li class="lb_text">{{item.specs[3]}}</li>
                    </ul>
                </div>
            </div>

            <div class="more-pics">
                <div class="gallery">
                    <img @click="showCarImgL" src="./images/button-left.jpg" class="btn-left">

                    <div class="more-pic-container" ref="imgscroll">
                        <div><img :src='"images/" + item.morepics[0]' alt="more img"></div>
                        <div><img :src='"images/" + item.morepics[1]' alt="more img"></div>
                        <div><img :src='"images/" + item.morepics[2]' alt="more img"></div>
                        <div><img :src='"images/" + item.morepics[3]' alt="more img"></div>
                        <div><img :src='"images/" + item.morepics[4]' alt="more img"></div>
                        <div><img :src='"images/" + item.morepics[5]' alt="more img"></div>
                        
                    </div>

                    <img @click="showCarImgR" src="./images/button-right.jpg" class="btn-right">
                </div>
            </div>
        </div>

        <footer class="foot">
            <h2 class="hidden">footer-nav</h2>
            <div>
                <a href="#app"><img src="./images/logo-footer.svg" alt="MINI COOPER logo" width="63" height="28"></a>
            </div>
            <div id="copyright">
                © 2022 MINI Canada
            </div>

        </footer>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelightbox');
        },

        showCarImgL() {
            this.$refs.imgscroll.scrollBy(-904, 0);
          },
      
        showCarImgR() {
            this.$refs.imgscroll.scrollBy(904, 0);
        }
    
    }
}