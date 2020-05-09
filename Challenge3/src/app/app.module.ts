import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/header/header.component';
import { FooterComponent } from './components/footer/footer.component';
import { CreateComponent } from './create/create.component';
import { SearchComponent } from './search/search.component';
import { UpdateComponent } from './update/update.component';
import { DeleteComponent } from './delete/delete.component';
import { DisplayallComponent } from './displayall/displayall.component';
import { Header1Component } from './components/header1/header1.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    CreateComponent,
    SearchComponent,
    UpdateComponent,
    DeleteComponent,
    DisplayallComponent,
    Header1Component,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
