import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

  create(): void {
    this.router.navigateByUrl('create');
}
update(): void {
  this.router.navigateByUrl('update');
}
search(): void {
  this.router.navigateByUrl('search');
}
delete(): void {
  this.router.navigateByUrl('delete');
}
displayall(): void {
  this.router.navigateByUrl('displayall');
}
}
