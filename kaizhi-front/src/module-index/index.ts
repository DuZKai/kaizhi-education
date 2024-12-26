import Router from '@/router';
import RouteConfig from './router';

export default class RankingIndex {
	public static install(router: typeof Router): void {
		// router.addRoutes(RouteConfig);
		RouteConfig.forEach(route => {
			router.addRoute(route);
		});
	}
}
