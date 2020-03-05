import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DefaultComponent } from 'src/app/layouts/default/default.component';
import { DashboardComponent } from 'src/app/modules/dashboard/dashboard.component';


@NgModule({
  declarations: [
    DefaultComponent,
    DashboardComponent
  ],
  imports: [
    CommonModule
  ]
})
export class DefaultModule { }
