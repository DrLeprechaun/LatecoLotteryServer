import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../../models/user';
import { AuthService } from '../../services/auth.service';
import { LotteryService } from '../../services/lottery.service';
import { MakeBets } from '../../models/make-bets';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'privateOffice',
  templateUrl: './privateOffice.component.html',
  styleUrls: ['./privateOffice.component.css']
})
export class PrivateOfficeComponent {

  private cost: number = 0;
  private _alert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string

  constructor(private auth: AuthService, private router: Router, private lottery: LotteryService) {}

  ngOnInit(): void {
    setTimeout(() => this.staticAlertClosed = true, 20000);

    this._alert.subscribe((message) => this.errorMessage = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
  }

  alertMessage(message: string) {
    this._alert.next(message);
  }

  /*addTicket(): void {
    this.addTicketRow().then(res => this.calculateCost());
  }

  addTicketRow() {
    return new Promise((resolve, reject) => {
      var table: HTMLTableElement = <HTMLTableElement> document.getElementById("ticketContainer");
      var row = table.insertRow();

      var cellLJ = row.insertCell(0);
      cellLJ.innerHTML = `<select class="form-control" id="exampleFormControlSelect1" (change)="calculateCost()">
        <option>Lottery</option>
        <option>Jackpot</option>
      </select>`;

      var cellType = row.insertCell(1);
      cellType.innerHTML = `<select class="form-control" id="exampleFormControlSelect2" (change)="calculateCost()">
          <option>5x36</option>
          <option>6x45</option>
          <option>4x20</option>
          <option>7x49</option>
      </select>`;

      var cellQuantity = row.insertCell(2);
      cellQuantity.innerHTML = `<input class="form-control" type="number" value="1" min ="1" (change)="calculateCost()">`;

      var cellRemove = row.insertCell(3);
      cellRemove.innerHTML = `<button type="button" class="btn btn-dark" (click)="removeTicket()">Remove</button>`;

        resolve();
    });

  }*/

  /*addTicket(): void {

    var table: HTMLTableElement = <HTMLTableElement> document.getElementById("ticketContainer");
    var row = table.insertRow();

    var cellLJ = row.insertCell(0);
    cellLJ.innerHTML = `<select class="form-control" onchange="calculateCost()">
      <option>Lottery</option>
      <option>Jackpot</option>
    </select>`;

    var cellType = row.insertCell(1);
    cellType.innerHTML = `<select class="form-control" onchange="calculateCost()">
        <option>5x36</option>
        <option>6x45</option>
        <option>4x20</option>
        <option>7x49</option>
    </select>`;

    var cellQuantity = row.insertCell(2);
    cellQuantity.innerHTML = `<input class="form-control" type="number" value="1" min ="1" onchange="calculateCost()">`;

    var cellRemove = row.insertCell(3);
    cellRemove.innerHTML = `<button type="button" class="btn btn-dark" onclick="removeTicket()">Remove</button>`;

    this.cost = this.cost + 1;
  }

  calculateCost() {

    var costCounter = 0;
    var table: HTMLTableElement = <HTMLTableElement> document.getElementById("ticketContainer");

    for (var i = 1; i < table.rows.length; i++) {

      var rowCost = 0;
      let game = table.rows[i].cells[0].childNodes[1] as HTMLSelectElement;
      let q = table.rows[i].cells[2].childNodes[1] as HTMLSelectElement;

      if (game.value == "Lottery") {
        rowCost = 1;
      } else if (game.value == "Jackpot") {
        rowCost = 5;
      }
      rowCost = rowCost * +q.value;
      costCounter += rowCost;
    }
    this.cost = costCounter;
  }*/

  calculateCost() {
    let l536 = document.getElementById("lottery_5x36") as HTMLSelectElement;
    let l645 = document.getElementById("lottery_6x45") as HTMLSelectElement;
    let l420 = document.getElementById("lottery_4x20") as HTMLSelectElement;
    let l749 = document.getElementById("lottery_7x49") as HTMLSelectElement;
    let j536 = document.getElementById("jackpot_5x36") as HTMLSelectElement;
    let j645 = document.getElementById("jackpot_6x45") as HTMLSelectElement;
    let j420 = document.getElementById("jackpot_4x20") as HTMLSelectElement;
    let j749 = document.getElementById("jackpot_7x49") as HTMLSelectElement;
    this.cost = +l536.value + +l645.value + +l420.value + +l749.value + +j536.value*5 + +j645.value*5 + +j420.value*5 + +j749.value*5;
  }

  buy() {
    let l536 = document.getElementById("lottery_5x36") as HTMLSelectElement;
    let l645 = document.getElementById("lottery_6x45") as HTMLSelectElement;
    let l420 = document.getElementById("lottery_4x20") as HTMLSelectElement;
    let l749 = document.getElementById("lottery_7x49") as HTMLSelectElement;
    let j536 = document.getElementById("jackpot_5x36") as HTMLSelectElement;
    let j645 = document.getElementById("jackpot_6x45") as HTMLSelectElement;
    let j420 = document.getElementById("jackpot_4x20") as HTMLSelectElement;
    let j749 = document.getElementById("jackpot_7x49") as HTMLSelectElement;

    let bet: MakeBets = new MakeBets(+l536.value, +l645.value, +l420.value, +l749.value, +j536.value, +j645.value, +j420.value, +j749.value);

    console.log(bet);

    this.lottery.makeBets(bet)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.router.navigateByUrl('/my-bets');
      } else {
        this.alertMessage(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })

  }

  logOut(): void {
    localStorage.removeItem('token');
  }

}
