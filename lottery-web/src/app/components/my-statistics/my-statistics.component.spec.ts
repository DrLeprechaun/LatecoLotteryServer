import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MyStatisticsComponent } from './my-statistics.component';

describe('MyStatisticsComponent', () => {
  let component: MyStatisticsComponent;
  let fixture: ComponentFixture<MyStatisticsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MyStatisticsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MyStatisticsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
