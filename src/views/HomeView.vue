<template>
  <div class="home">
    <h1>Mi primera página en GitHub Pages 😊</h1>
    <img
      src="https://cdn.dribbble.com/users/420183/screenshots/2875637/octocat_github.gif"
      alt=""
    />
  </div>
</template>

<script>
export default {
  name: "HomeView",
};
</script>

<style lang="scss" scoped>
.home {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding-inline: 12px;
  width: 100%;
  text-align: center;

  img {
    width: 100%;
    max-width: 500px;
  }
}
</style>
