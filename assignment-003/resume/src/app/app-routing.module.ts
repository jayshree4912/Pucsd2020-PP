import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ProfileComponent } from './profile/profile.component';
import { EducationaldetailsComponent } from './educationaldetails/educationaldetails.component';
import { ProjectsassignmentsComponent } from './projectsassignments/projectsassignments.component';
import { TechqualificationComponent } from './techqualification/techqualification.component';
import { WorkexperienceComponent } from './workexperience/workexperience.component';
import { HobbiesComponent } from './hobbies/hobbies.component';
import { ContactComponent } from './contact/contact.component';
const routes: Routes = [
  { path:'profile', component:ProfileComponent },
  { path: 'educationaldetails' , component:EducationaldetailsComponent },
  { path:'projectsassignments' , component:ProjectsassignmentsComponent },
  { path:'techqualification' , component:TechqualificationComponent },
  { path:'workexperience' , component:WorkexperienceComponent },
  { path:'hobbies' , component:HobbiesComponent },
  { path:'contact' , component:ContactComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
