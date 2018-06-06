import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { LotteryService } from '../../services/lottery.service';
import { User } from '../../models/user';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';

@Component({
  selector: 'home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  providers: [ TicketsPurchaseService ],
})
export class HomeComponent {

  private modalTitle: string;
  private maxNumber: number;
  private combinationSize: number;
  private ticketCost: number;
  private lotteryGrequencyDescription: string;

  constructor(private router: Router,
    private lottery: LotteryService,
    private auth: AuthService,
    private tpService: TicketsPurchaseService,
    private modalService: NgbModal) {}

  ngOnInit(): void {
    this.lottery.getBank()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        console.log(res.json().data);
      } else {
        console.log(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })
  }

  logOut(): void {
    /*const token = localStorage.getItem('token');
    this.auth.ensureAuthenticated(token)
    .then((resp_data) => {
      if (resp_data.json().status === 'success') {
        console.log(resp_data.json())
      }
    })
    .catch((err) => {
      console.log(err);
    });*/
    localStorage.removeItem('token'); //localStorage.clear();
  }

  open(type, content) {
    this.modalTitle = type;

    if (type == "Lottery 5x36") {
      this.maxNumber = 36;
      this.combinationSize = 5;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Lottery 6x45") {
      this.maxNumber = 45;
      this.combinationSize = 6;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Lottery 4x20") {
      this.maxNumber = 20;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Lottery 7x49") {
      this.maxNumber = 49;
      this.combinationSize = 7;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Jackpot 5x36") {
      this.maxNumber = 36;
      this.combinationSize = 5;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
    } else if (type == "Jackpot 6x45") {
      this.maxNumber = 45;
      this.combinationSize = 6;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
    } else if (type == "Jackpot 4x20") {
      this.maxNumber = 20;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
    }else if (type == "Jackpot 4x21") {
      this.maxNumber = 21;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
    } else if (type == "Jackpot 7x49") {
      this.maxNumber = 49;
      this.combinationSize = 7;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
    } else if (type == "Rapidos") {
      this.maxNumber = 21;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
    } else if (type == "Supers") {
      this.maxNumber = 36;
      this.combinationSize = 5;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
    } else if (type == "Top3") {
      this.maxNumber = 45;
      this.combinationSize = 6;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Top3 is held every 5 minutes.";
    }

    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }

  private getDismissReason(reason: any): string {
    if (reason === ModalDismissReasons.ESC) {
      return 'by pressing ESC';
    } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
      return 'by clicking on a backdrop';
    } else {
      return  `with: ${reason}`;
    }
  }

  goLogin(lotteryType: string): void {
    this.router.navigateByUrl('/login');
    this.tpService.setLotteryType(lotteryType);
    //this.router.navigateByUrl('/buy-ticket');
    //this.tpService.setWannaBuy('yes');
  }

}
