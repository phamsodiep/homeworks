import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { DefaultComponent } from 'src/app/layouts/default/default.component';
import { DashboardComponent } from 'src/app/modules/dashboard/dashboard.component'; 
import { PostsComponent } from 'src/app/modules/posts/posts.component';


const routes: Routes = [{
    path: '',
    component: DefaultComponent,
    children: [{
      path: '',
      component: DashboardComponent
    },{
      path: 'posts',
      component: PostsComponent
    }]
}];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
