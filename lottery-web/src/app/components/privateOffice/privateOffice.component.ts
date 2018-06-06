import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../../models/user';
import { AuthService } from '../../services/auth.service';
import { LotteryService } from '../../services/lottery.service';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
import { MakeBets } from '../../models/make-bets';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';
import {NgbModal, ModalDismissReasons, NgbModalRef/*, NgbActiveModal*/} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'privateOffice',
  templateUrl: './privateOffice.component.html',
  styleUrls: ['./privateOffice.component.css']
})
export class PrivateOfficeComponent {

  modalReference: NgbModalRef;
  private cost: number = 0;
  private _alert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string;
  modalTitle: string;
  buyContent: boolean;
  aboutContent: boolean;
  private maxNumber: number;
  private combinationSize: number;
  private lotteryGrequencyDescription: string;

  constructor(private auth: AuthService,
    private router: Router,
    private lottery: LotteryService,
    private modalService: NgbModal,/*, private activeModal: NgbActiveModal*/
    private tpService: TicketsPurchaseService
  ) {}

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

  calculateTicketCost() {
    let coef = 0;

    let ticketInput = document.getElementById("ticketInput") as HTMLSelectElement;

    if (this.modalTitle == "Lottery 5x36" || this.modalTitle == "Lottery 6x45" || this.modalTitle == "Lottery 4x20" || this.modalTitle == "Lottery 7x49") {
      coef = 1;
    } else if (this.modalTitle == "Jackpot 5x36" || this.modalTitle == "Jackpot 6x45" || this.modalTitle == "Jackpot 4x20" || this.modalTitle == "Jackpot 7x49") {
      coef = 5;
    }

    this.cost = coef * +ticketInput.value;
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

  buyTicket() {

    let ticketInput = document.getElementById("ticketInput") as HTMLSelectElement;

    let l536 = 0;
    let l645 = 0;
    let l420 = 0;
    let l749 = 0;
    let j536 = 0;
    let j645 = 0;
    let j420 = 0;
    let j749 = 0;

    if (this.modalTitle == "Lottery 5x36") {
      l536 = +ticketInput.value;
    } else if (this.modalTitle == "Lottery 6x45") {
      l645 = +ticketInput.value;
    } else if (this.modalTitle == "Lottery 4x20") {
      l420 = +ticketInput.value;
    } else if (this.modalTitle == "Lottery 7x49") {
      l749= +ticketInput.value;
    } else if (this.modalTitle == "Jackpot 5x36") {
      j536 = +ticketInput.value;
    } else if (this.modalTitle == "Jackpot 6x45") {
      j645 = +ticketInput.value;
    } else if (this.modalTitle == "Jackpot 4x20") {
      j420 = +ticketInput.value;
    } else if (this.modalTitle == "Jackpot 7x49") {
      j749= +ticketInput.value;
    }

    let bet: MakeBets = new MakeBets(l536, l645, l420, l749, j536, j645, j420, j749);

    console.log(bet);

    this.lottery.makeBets(bet)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        /*this.activeModal.close();*/
        //close('close');
        this.modalReference.close();
        this.router.navigateByUrl('/my-bets');
      } else {
        this.alertMessage(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })

  }

  open(title, reason, content) {
    this.modalTitle = title;
    this.modalReference = this.modalService.open(content);
    if (reason == "about") {
      this.aboutContent = true;
      this.buyContent = false;
      if (title== "Jackpot 5x36") {
        this.maxNumber = 36;
        this.combinationSize = 5;
        this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
      } else if (title == "Jackpot 6x45") {
        this.maxNumber = 45;
        this.combinationSize = 6;
        this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
      } else if (title == "Jackpot 4x20") {
        this.maxNumber = 20;
        this.combinationSize = 4;
        this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
      }else if (title == "Jackpot 4x21") {
        this.maxNumber = 21;
        this.combinationSize = 4;
        this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
      } else if (title == "Jackpot 7x49") {
        this.maxNumber = 49;
        this.combinationSize = 7;
        this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
      } else if (title == "Rapidos") {
        this.maxNumber = 21;
        this.combinationSize = 4;
        this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
      } else if (title == "Supers") {
        this.maxNumber = 36;
        this.combinationSize = 5;
        this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
      } else if (title == "Top3") {
        this.maxNumber = 45;
        this.combinationSize = 6;
        this.lotteryGrequencyDescription = "Top3 is held every 5 minutes.";
      }
    } else if (reason == "buy") {
      this.aboutContent = false;
      this.buyContent = true;
      this.cost = 1;
    }
    //this.modalService.open(content).result.then((result) => {
    this.modalReference.result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }


  private getDismissReason(reason: any): string {
    this.modalTitle = "";
    this.cost = 0;
    let ticketInput = document.getElementById("ticketInput") as HTMLSelectElement;
    ticketInput.value = "0";
    if (reason === ModalDismissReasons.ESC) {
      return 'by pressing ESC';
    } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
      return 'by clicking on a backdrop';
    } else {
      return  `with: ${reason}`;
    }
  }

  private buyTicketRedirect(type: string): void {
    this.tpService.setLotteryType(type);
    //console.log(this.tpService.getLotteryType());
    this.router.navigateByUrl('/buy-ticket');
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

}
