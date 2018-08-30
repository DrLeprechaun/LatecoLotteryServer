import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BuyTestComponent } from './buy-test.component';

describe('BuyTestComponent', () => {
  let component: BuyTestComponent;
  let fixture: ComponentFixture<BuyTestComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BuyTestComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BuyTestComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
