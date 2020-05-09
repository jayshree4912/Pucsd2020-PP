import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-displayall',
  templateUrl: './displayall.component.html',
  styleUrls: ['./displayall.component.scss']
})
export class DisplayallComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
  elements: any = [
    {id: 1, firstname: 'Jayshree',lastname: 'Pawar', emailid: 'pawarjay@gmail.com' , contact:'1234567890',password:'**********'},
    {id: 1, firstname: 'Kavita',lastname: 'Pawar', emailid: 'kavipawar@gmail.com' , contact:'0987654321',password:'********'}
    
  ];

  headElements = ['First Name', 'Last Name', 'Email Id', 'Contact','Password'];

}
