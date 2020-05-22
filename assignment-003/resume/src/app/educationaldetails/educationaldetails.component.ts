import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-educationaldetails',
  templateUrl: './educationaldetails.component.html',
  styleUrls: ['./educationaldetails.component.scss']
})
export class EducationaldetailsComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
  elements: any = [
    {id: 1, degree: 'S.Y.M.C.A.', university: 'Pune University', college: 'Department Of Computer Science ,Pune' , year:'2019',percentage:'5.4(CGPA)'},
    {id: 2, degree: 'B.Sc.(CS)', university: 'Pune University', college: 'M.S.G.College, Malegaon' , year:'2017',percentage:'70.10'},
    {id: 3, degree: 'HSC', university: 'State Board', college: 'K.B.H.Vidyalay, Malegaon' , year:'2014',percentage:'65.54'},
    {id: 4, degree: 'SSC', university: 'State Board', college: 'R.B.H.Kanya Vidyalay,Malegaon' , year:'2012',percentage:'78.36'}
  ];

  headElements = ['Degree/Course', 'University', 'College/School', 'Year','Percentage(%)'];
}
