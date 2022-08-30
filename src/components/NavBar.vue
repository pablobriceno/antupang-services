<template>
  <div class="nav-bar">
    <input id="nav__toggle" type="checkbox" v-model="menuToggle" />
    <div class="logo">
      <img src="@/assets/logo.svg" alt="" @click="redirect" />
    </div>
    <div class="company-name"><p>Antupang Services</p></div>
    <label for="nav__toggle" class="menu">
      <div class="line"></div>
      <div class="line"></div>
      <div class="line"></div>
    </label>
    <ul
      class="nav__links"
      :class="{ active: menuToggle }"
      @click="menuToggle = false"
    >
      <li>
        <router-link :to="{ name: 'home' }" class="nav__link"
          >Inicio</router-link
        >
      </li>
      <div class="divider"></div>
      <li>
        <router-link :to="{ name: 'faq' }" class="nav__link"
          >Preguntas frecuentes</router-link
        >
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      menuToggle: false,
    };
  },
  methods: {
    redirect() {
      if (this.$route.name != "home") {
        this.$router.push({ name: "home" });
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.nav-bar {
  position: sticky;
  z-index: 99;
  top: 0;
  padding: 0 5%;
  height: 5rem;
  background: #fff;
  display: flex;
  align-items: center;
  justify-content: space-between;
  transition: background 300ms ease-in;
  box-shadow: rgb(0 0 0 / 12%) 0px 2px 8px;

  .logo {
    width: 50px;
    height: 50px;
    img {
      width: 100%;
      height: 100%;
    }
  }

  .company-name {
    p {
      font-weight: 600;
      font-size: 16px;
    }
  }

  .menu {
    cursor: pointer;
    .line {
      width: 30px;
      height: 5px;
      background-color: #000;
      margin: 5px;
      border-radius: 3px;
      transition: all 0.3s ease-in-out;
    }
  }

  & :checked ~ .menu .line:nth-child(1) {
    transform: translateY(10px) rotate(225deg);
  }
  & :checked ~ .menu .line:nth-child(3) {
    transform: translateY(-10px) rotate(-225deg);
  }
  & :checked ~ .menu .line:nth-child(2) {
    opacity: 0;
  }
}

#nav__toggle {
  position: absolute;
  transform: translateX(-1000px);
}

.nav__links {
  position: absolute;
  top: 5rem;
  left: 0;
  width: 100%;
  background-color: #fff;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 24px 0;
  transform: translateX(100%);
  -webkit-transform: translateX(100%);
  transition: transform 300ms ease;

  &.active {
    transform: translateX(0);
    -webkit-transform: translateX(0);
  }

  li {
    a {
      font-weight: 600;
    }
  }
}
</style>
