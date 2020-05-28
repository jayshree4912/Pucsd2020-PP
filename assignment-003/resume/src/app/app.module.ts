import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ProfileComponent } from './profile/profile.component';
import { EducationaldetailsComponent } from './educationaldetails/educationaldetails.component';
import { ProjectsassignmentsComponent } from './projectsassignments/projectsassignments.component';
import { TechqualificationComponent } from './techqualification/techqualification.component';
import { WorkexperienceComponent } from './workexperience/workexperience.component';
import { HobbiesComponent } from './hobbies/hobbies.component';
import { ContactComponent } from './contact/contact.component';

@NgModule({
  declarations: [
    AppComponent,
    ProfileComponent,
    EducationaldetailsComponent,
    ProjectsassignmentsComponent,
    TechqualificationComponent,
    WorkexperienceComponent,
    HobbiesComponent,
    ContactComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
