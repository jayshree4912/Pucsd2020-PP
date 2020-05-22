import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TechqualificationComponent } from './techqualification.component';

describe('TechqualificationComponent', () => {
  let component: TechqualificationComponent;
  let fixture: ComponentFixture<TechqualificationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TechqualificationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TechqualificationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
