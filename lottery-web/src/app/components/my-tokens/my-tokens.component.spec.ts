import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MyTokensComponent } from './my-tokens.component';

describe('MyTokensComponent', () => {
  let component: MyTokensComponent;
  let fixture: ComponentFixture<MyTokensComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MyTokensComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MyTokensComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
