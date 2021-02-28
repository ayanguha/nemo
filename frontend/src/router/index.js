import Vue from 'vue';
import VueRouter from 'vue-router';
import Dashboard from '../views/Dashboard.vue';
import Artefact from '../views/Artefact.vue';
import Foundation from '../views/Foundation.vue';
import Workflow from '../views/Workflow.vue';
import Monitroing from '../views/Monitroing.vue';
import About from '../views/About.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Dashboard',
    component: Dashboard,
  },
  {
    path: '/artefact',
    name: 'Artefact',
    component: Artefact,
  },
  {
    path: '/foundation',
    name: 'Foundation',
    component: Foundation,
  },
  {
    path: '/workflow',
    name: 'Workflow',
    component: Workflow,
  },
  {
    path: '/monitoring',
    name: 'Monitroing',
    component: Monitroing,
  },
  {
    path: '/about',
    name: 'About',
    component: About,
  },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});

export default router;
