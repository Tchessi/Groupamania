<template>
  <div></div>
</template>

<script>
import { mapState } from 'vuex';
export default {
  name: 'NotificationAlert',
  watch: {
    message(newMessage) {
      if (!newMessage) return;
      this.$bvToast.toast(newMessage, {
        title: 'Notification',
        autoHideDelay: 4000,
      });
    },
  },
  computed: {
    ...mapState(['notificationAlert']),
    message() {
      return this.notificationAlert.message;
    },
  },
};
</script>

<style lang="scss"></style>
