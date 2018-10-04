import { Component } from '@angular/core';
import { TicketsPurchaseService } from './services/tickets-purchase.service';
import { ConfigService } from './services/config.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ TicketsPurchaseService ],
})
export class AppComponent {
  title = 'app';

  constructor(private configService: ConfigService) { }

  ngOnInit(): void {
    this.configService.getJSON()
    .then((res) => {
      localStorage.setItem("server_path", res.json().server_path);
    })
  }
}
