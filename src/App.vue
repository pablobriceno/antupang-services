<template>
  <div id="app">
    <NavBar />
    <transition name="fade" mode="out-in">
      <router-view />
    </transition>
    <Footer />
    <BackToTop />
    <ContactBtn />
  </div>
</template>

<script>
import NavBar from "@/components/NavBar.vue";
import Footer from "@/components/Footer.vue";
import BackToTop from "@/components/BackToTop.vue";
import ContactBtn from "@/components/ContactBtn.vue";
export default {
  data() {
    return {};
  },
  components: {
    NavBar,
    Footer,
    BackToTop,
    ContactBtn,
  },

  methods: {
    goTop() {
      window.scroll({
        top: 0,
        behavior: "smooth",
      });
    },
  },
};
</script>

<style lang="scss" scoped>
/* TRANSITIONS */
.fade-enter,
.fade-leave-to {
  opacity: 0;
  transform: translateX(2em);
}

.fade-enter-active,
.fade-leave-active {
  transition: all 300ms ease-out;
}
</style>
