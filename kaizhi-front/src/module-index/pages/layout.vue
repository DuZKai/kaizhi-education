<template>
  <div>
    <PortalHeader/>
    <div class="page-container">
      <div class="course-list portal-content">
        <router-view/>
      </div>
    </div>
    <PortalFooter/>
  </div>
</template>

<script lang="ts">
import {Component, Vue} from 'vue-property-decorator'
import PortalHeader from "@/components/portal-header/index.vue";
import PortalFooter from "@/components/portal-footer/index.vue";

@Component({
  name: 'Layout',
  components: {PortalFooter, PortalHeader}
})
export default class extends Vue {
}
</script>

<style lang="scss">
@import '@/scss/base';
</style>
