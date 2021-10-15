<template>
  <div class="app-container">
    <ul>
      <li v-for="(item, index) in userList" :key="index">
        {{ item.name }}
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref, onMounted } from 'vue';
import { getUserList } from './api/user';

export default defineComponent({
  name: 'App',
  setup() {
    const userList = ref<any[]>([]);

    onMounted(async () => {
      getUserList().then((res) => {
        console.log(res);
        userList.value = res;
      });
    });

    return {
      userList,
    };
  },
});
</script>

<style lang="scss"></style>
