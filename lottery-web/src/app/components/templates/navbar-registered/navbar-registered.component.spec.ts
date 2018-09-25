import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NavbarRegisteredComponent } from './navbar-registered.component';

describe('NavbarRegisteredComponent', () => {
  let component: NavbarRegisteredComponent;
  let fixture: ComponentFixture<NavbarRegisteredComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NavbarRegisteredComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NavbarRegisteredComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
