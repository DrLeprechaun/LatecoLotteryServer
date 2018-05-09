import { TestBed, inject } from '@angular/core/testing';

import { TicketsPurchaseService } from './tickets-purchase.service';

describe('TicketsPurchaseService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [TicketsPurchaseService]
    });
  });

  it('should be created', inject([TicketsPurchaseService], (service: TicketsPurchaseService) => {
    expect(service).toBeTruthy();
  }));
});
