<template>
  <transition name="back-to-top-fade">
    <div
      class="vue-back-to-top"
      :style="`bottom:${this.bottom};right:${this.right};`"
      v-show="visible"
      @click="backToTop"
    >
      <img src="@/assets/images/go-up.png" alt="" />
    </div>
  </transition>
</template>

<script>
export default {
  data() {
    return {
      visible: false,
    };
  },
  props: {
    visibleoffset: {
      type: [String, Number],
      default: 2000,
    },
    right: {
      type: String,
      default: "12px",
    },
    bottom: {
      type: String,
      default: "12px",
    },
  },

  mounted() {
    window.smoothscroll = () => {
      let currentScroll =
        document.documentElement.scrollTop || document.body.scrollTop;
      if (currentScroll > 0) {
        window.requestAnimationFrame(window.smoothscroll);
        window.scrollTo(0, Math.floor(currentScroll - currentScroll / 5));
      }
    };
    window.addEventListener("scroll", this.catchScroll);
  },
  destroyed() {
    window.removeEventListener("scroll", this.catchScroll);
  },
  methods: {
    catchScroll() {
      this.visible = window.pageYOffset > parseInt(this.visibleoffset);
    },

    backToTop() {
      window.smoothscroll();
      this.$emit("scrolled");
    },
  },
};
</script>

<style lang="scss" scoped>
.back-to-top-fade-enter-active,
.back-to-top-fade-leave-active {
  transition: opacity 0.7s;
}
.back-to-top-fade-enter,
.back-to-top-fade-leave-to {
  opacity: 0;
}

.vue-back-to-top {
  position: fixed;
  z-index: 98;
  cursor: pointer;
  width: 3rem;
  height: 3rem;
  background-color: #fff;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  border: 2px solid #ed7161;

  img {
    width: 25px;
    height: 25px;
  }
}
</style>
