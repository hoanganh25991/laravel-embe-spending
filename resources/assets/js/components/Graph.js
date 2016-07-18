import Chart from "chart.js";
import Vue from "vue";
// import Vue-S
export default Vue.extend({
	template: "<canvas></canvas>",
	props: {
		url:{},
		type: {
			default: "line"
		}
	},
	ready: function(){
		var graph = this;
		var ctx = this.$el.getContext("2d");
		this.$http.get(graph.url)
			.then(function(response){
				const data = response.data;
				
				new Chart(ctx, {
					type: graph.type,
					data: {
						labels: Object.keys(data),
						datasets: [
							{
								label: '#Spends',
								data: Object.keys(data).map(key => data[key])
							}
						]
					}
				});
			});
	}
});