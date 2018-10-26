import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MainBunnerComponent } from './main-bunner.component';

describe('MainBunnerComponent', () => {
  let component: MainBunnerComponent;
  let fixture: ComponentFixture<MainBunnerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MainBunnerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MainBunnerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
