<template>
  <div id="app">
    <div
      id="nav"
      class="sticky-top justify-content-start justify-content-sm-center mb-3"
    >
      <router-link to="/">
        <img
          id="logo"
          :src="
            require('./assets/icon-left-font-monochrome-black-removebg-preview (1).png')
          "
          alt="logo Groupomania"
          width="230"
          height="200"
        />
      </router-link>
    </div>
    <NotificationAlert />
    <router-view />
  </div>
</template>

<script>
import NotificationAlert from '../src/components/NotificationAlert';
export default {
  name: 'App',
  components: {
    NotificationAlert,
  },
};
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
#nav {
  background: #ffffff;
  box-shadow: 0 0 2px rgba(0, 0, 0, 0.2);
  z-index: 1;
  margin: 15px;
}
@media screen and (min-width: 280px) and (max-width: 767px) {
  body,
  .btn,
  .form-control {
    font-size: 13px !important;
  }
  #nav #logo {
    display: flex;
    margin-left: 30px;
  }
}
@media screen and (min-width: 767px) and (max-width: 991px) {
  #nav #logo {
    max-width: 200px;
  }
}
</style>
