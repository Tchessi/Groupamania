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
html {
  background-color: #17a2b859;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background-color: #17a2b859;
}
#nav {
  background: #ffffff;
  -webkit-box-shadow: 0px 5px 13px -7px #000000,
    5px 5px 15px 7px rgba(184, 184, 184, 0);
  box-shadow: 0px 10px 13px -7px #0000004b,
    5px 5px 15px 7px rgba(184, 184, 184, 0);
  z-index: 1;
  margin: 0px 15px 0 15px;
}
@media screen and (min-width: 280px) and (max-width: 767px) {
  body,
  .btn,
  .form-control {
    font-size: 13px !important;
  }
  #nav #logo {
    padding-left: 10px;
  }
}
@media screen and (min-width: 767px) and (max-width: 991px) {
  #nav #logo {
    max-width: 200px;
  }
}
</style>
