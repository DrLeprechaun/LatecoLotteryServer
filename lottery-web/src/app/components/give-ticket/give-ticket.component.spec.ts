import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GiveTicketComponent } from './give-ticket.component';

describe('GiveTicketComponent', () => {
  let component: GiveTicketComponent;
  let fixture: ComponentFixture<GiveTicketComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GiveTicketComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GiveTicketComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
