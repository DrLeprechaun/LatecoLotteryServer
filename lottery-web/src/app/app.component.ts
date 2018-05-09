import { Component } from '@angular/core';
import { TicketsPurchaseService } from './services/tickets-purchase.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ TicketsPurchaseService ],
})
export class AppComponent {
  title = 'app';
}
