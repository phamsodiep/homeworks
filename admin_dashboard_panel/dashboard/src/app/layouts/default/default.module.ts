import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { RouterModule } from '@angular/router';

import { DefaultComponent } from 'src/app/layouts/default/default.component';
import { DashboardComponent } from 'src/app/modules/dashboard/dashboard.component';

import { PostsComponent } from 'src/app/modules/posts/posts.component';

import { SharedModule } from 'src/app/shared/shared.module';


@NgModule({
  declarations: [
    DefaultComponent,
    DashboardComponent,
    PostsComponent
  ],
  imports: [
    CommonModule,
    RouterModule,
    SharedModule
  ]
})
export class DefaultModule { }
