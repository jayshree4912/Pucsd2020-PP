import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ProjectsassignmentsComponent } from './projectsassignments.component';

describe('ProjectsassignmentsComponent', () => {
  let component: ProjectsassignmentsComponent;
  let fixture: ComponentFixture<ProjectsassignmentsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ProjectsassignmentsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ProjectsassignmentsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
