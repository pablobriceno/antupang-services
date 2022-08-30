<template>
  <div class="carousel" @keydown="checkSlide($event)" tabindex="0">
    <slot></slot>
    <svg
      @click.prevent="next"
      class="btn btn-next"
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden="true"
      role="img"
      width="1em"
      height="1em"
      preserveAspectRatio="xMidYMid meet"
      viewBox="0 0 24 24"
    >
      <g transform="rotate(180 12 12)">
        <path
          fill="currentColor"
          d="M15.41 16.59L10.83 12l4.58-4.59L14 6l-6 6l6 6l1.41-1.41z"
        />
      </g>
    </svg>
    <svg
      @click.prevent="prev"
      class="btn btn-prev"
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden="true"
      role="img"
      width="1em"
      height="1em"
      preserveAspectRatio="xMidYMid meet"
      viewBox="0 0 24 24"
    >
      <path
        fill="currentColor"
        d="M15.41 16.59L10.83 12l4.58-4.59L14 6l-6 6l6 6l1.41-1.41z"
      />
    </svg>
  </div>
</template>
<script>
export default {
  data() {
    return {
      index: 0,
      slides: [],
      slideDirection: "",
    };
  },
  computed: {
    slidesLength() {
      return this.slides.length;
    },
  },
  mounted() {
    this.slides = this.$children;
    this.slides.map((slide, index) => {
      slide.index = index;
    });
  },
  methods: {
    next() {
      this.index++;
      if (this.index >= this.slidesLength) {
        this.index = 0;
      }
      this.slideDirection = "slide-right";
    },
    prev() {
      this.index--;
      if (this.index < 0) {
        this.index = this.slidesLength - 1;
      }
      this.slideDirection = "slide-left";
    },
    checkSlide(event) {
      if (event.keyCode === 39) {
        this.next();
      } else if (event.keyCode === 37) {
        this.prev();
      } else {
        return;
      }
    },
  },
};
</script>
<style>
.carousel {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: 200px;
  z-index: 10;
}
.btn {
  border-radius: 50%;
  margin: 5px 0;
  color: rgba(0, 0, 0, 0.416);
  height: 50px;
  width: 50px;
  position: absolute;
  margin-top: -25px;
  z-index: 2;
}
.btn:hover {
  cursor: pointer;
}
.btn:focus {
  outline: none;
}
.btn-next {
  top: 50%;
  right: 0;
}
.btn-prev {
  top: 50%;
  left: 0;
}
</style>
