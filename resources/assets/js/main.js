import Vue from "vue";
import Graph from "./components/Graph";
import VueResource from 'vue-resource';

Vue.use(VueResource);

new Vue({
	el: '#summary',

	components: { Graph }
});
