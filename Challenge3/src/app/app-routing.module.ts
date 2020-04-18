import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HeaderComponent } from './components/header/header.component';
import { FooterComponent } from './components/footer/footer.component';
import { CreateComponent } from './create/create.component';
import { SearchComponent } from './search/search.component';
import { UpdateComponent } from './update/update.component';
import { DeleteComponent } from './delete/delete.component';
import { DisplayallComponent } from './displayall/displayall.component';
import { Header1Component } from './components/header1/header1.component';

const routes: Routes = [
  { path:'create', component: CreateComponent},
  { path:'search', component: SearchComponent},
  { path:'update', component: UpdateComponent},
  {path: 'delete', component: DeleteComponent},
  { path: 'displayall', component: DisplayallComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
