import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GiveScratchComponent } from './give-scratch.component';

describe('GiveScratchComponent', () => {
  let component: GiveScratchComponent;
  let fixture: ComponentFixture<GiveScratchComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GiveScratchComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GiveScratchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
