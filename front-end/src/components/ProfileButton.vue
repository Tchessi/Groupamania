<template>
  <div>
    <button
      @click="toggleActions"
      class="profile-btn d-flex position-fixed justify-content-center justify-content-lg-between align-items-center"
      aria-label="Afficher les actions"
    >
      <span class="name-profile-btn d-none d-lg-block"
        ><strong>{{ userData.firstName }}</strong></span
      >
      <ProfileImage
        :src="userData.imageUrl"
        customClass="profile-btn__img"
        divCustomClass="div-profile-btn-img"
      />
    </button>
    <b-collapse
      id="profile-collapsed"
      v-bind:class="`collapsed mt-2 position-fixed ${
        areActionsVisible && 'visible'
      }`"
    >
      <b-card class="border-0" @click="toggleActions">
        <p class="card-text">
          <button
            class="collapsed-btn btn-block text-left"
            @click="changeOrReloadPage('Profile')"
            aria-label="Voir mon profil"
          >
            <b-icon icon="person" class="mr-2"></b-icon>Voir mon profil
          </button>
        </p>
        <p class="card-text">
          <button
            class="collapsed-btn btn-block text-left"
            @click="changeOrReloadPage('Posts')"
            aria-label="Voir la page d'accueil"
          >
            <b-icon icon="house" class="mr-2"></b-icon>Voir la page d'accueil
          </button>
        </p>
        <p class="card-text">
          <button
            class="collapsed-btn btn-block text-left"
            @click="logout"
            aria-label="Se déconnecter"
          >
            <b-icon icon="box-arrow-right" class="mr-2"></b-icon>
            Se déconnecter
          </button>
        </p>
      </b-card>
    </b-collapse>
  </div>
</template>

<script>
import ProfileImage from './ProfileImage';
export default {
  name: 'ProfileButton',
  components: {
    ProfileImage,
  },
  props: {},
  data() {
    return {
      userData: JSON.parse(localStorage.getItem('userData')),
      areActionsVisible: false,
    };
  },
  methods: {
    toggleActions() {
      this.areActionsVisible = !this.areActionsVisible;
    },
    logout() {
      localStorage.clear();
      this.$router.push({ name: 'Login' });
    },
    changeOrReloadPage(name) {
      if (name === this.$route.name) return window.location.reload();
      this.$router.push({ name });
    },
  },
};
</script>

<style lang="scss">
.profile-btn {
  font-weight: 500;
  border: 2px solid #aedfe6;
  color: #000;
  top: 175px;
  right: 45px;
  height: 45px;
  padding: 5px 5px 5px 16px;
  background-color: #ffffff !important;
  border-radius: 15px;

  z-index: 2;
  &:focus {
    outline: none;
  }
  &:hover,
  &:visited {
    background-color: rgb(255, 255, 255) !important;
    border: 1px solid #aedfe6;
  }
  &__img {
    height: 30px;
  }
}
.collapsed-btn {
  font-weight: 500;
  color: #000;
  background-color: white;
  border: none;
  padding: 0.375rem 0.75rem;
  border-radius: 0.25rem;
  &:hover,
  &:focus,
  &active {
    background-color: #17a3b828;
    outline: none;
  }
  .b-icon.bi {
    font-size: 125%;
    vertical-align: text-bottom;
  }
}
.div-profile-btn-img {
  width: 30px;
  height: 30px;
  margin-left: 8px;
}
#profile-collapsed {
  top: 212px;
  right: 44px;
  z-index: 1;
}
@media screen and (min-width: 280px) and (max-width: 769px) {
  .profile-btn {
    top: 150px;
    right: 30px;
    height: 35px;
    border: 1px solid grey;
    padding: 0;
    &__img {
      height: 35px;
    }
  }
  .div-profile-btn-img {
    width: 35px;
    height: 35px;
    margin-left: 0;
  }
  #profile-collapsed {
    top: 180px;
    right: 50px;
  }
}
@media screen and (min-width: 769px) and (max-width: 992px) {
  .name-profile-btn {
    display: block !important;
  }
}
</style>
