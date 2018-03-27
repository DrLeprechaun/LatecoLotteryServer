import { TestBed, inject } from '@angular/core/testing';

import { EnsureAccessService } from './ensure-access.service';

describe('EnsureAccessService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [EnsureAccessService]
    });
  });

  it('should be created', inject([EnsureAccessService], (service: EnsureAccessService) => {
    expect(service).toBeTruthy();
  }));
});
