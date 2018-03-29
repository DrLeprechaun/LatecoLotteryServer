import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';


@Component({
  selector: 'app-my-bets',
  templateUrl: './my-bets.component.html',
  styleUrls: ['./my-bets.component.css']
})
export class MyBetsComponent implements OnInit {

  rawData: any[] = [];
  tableData: any[] = [];
  modalId: string = "";
  modalType: string = "";
  modalButtonsQuantity: number = 0;
  modalButtonsArray: any[] = [];

  constructor(private lottery: LotteryService, private modalService: NgbModal) { }

  ngOnInit() {
    this.loadData();
  }

  loadData(): void {
    this.lottery.getBets()
    .then((res) => {
      if (res.json().status === 'success') {
        console.log(res.json());
        this.tableData = [];
        this.rawData = res.json().data;
        //Lottery 5x36
        for (var i = 0; i < res.json().data.lottery_5x36.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_5x36[i].id,
            "fake_id": "00" + 10536 + res.json().data.lottery_5x36[i].id,
            "type_name": "Lottery 5x36",
            "type": "lottery_5x36",
            "combination": this.processCombination(res.json().data.lottery_5x36[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Lottery 6x45
        for (var i = 0; i < res.json().data.lottery_6x45.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_5x36[i].id,
            "fake_id": "00" + 10645 + res.json().data.lottery_5x36[i].id,
            "type_name": "Lottery 6x45",
            "type": "lottery_6x45",
            "combination": this.processCombination(res.json().data.lottery_6x45[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Lottery 4x20
        for (var i = 0; i < res.json().data.lottery_4x20.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_4x20[i].id,
            "fake_id": "00" + 10420 + res.json().data.lottery_4x20[i].id,
            "type_name": "Lottery 4x20",
            "type": "lottery_4x20",
            "combination": this.processCombination(res.json().data.lottery_4x20[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Lottery 7x49
        for (var i = 0; i < res.json().data.lottery_7x49.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_7x49[i].id,
            "fake_id": "00" + 10749 + res.json().data.lottery_7x49[i].id,
            "type_name": "Lottery 7x49",
            "type": "lottery_7x49",
            "combination": this.processCombination(res.json().data.lottery_7x49[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Jackpot 5x36
        for (var i = 0; i < res.json().data.jackpot_5x36.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_5x36[i].id,
            "fake_id": "00" + 21536 + res.json().data.jackpot_5x36[i].id,
            "type_name": "Jackpot 5x36",
            "type": "jackpot_5x36",
            "combination": this.processCombination(res.json().data.jackpot_5x36[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Jackpot 6x45
        for (var i = 0; i < res.json().data.jackpot_6x45.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_5x36[i].id,
            "fake_id": "00" + 21645 + res.json().data.jackpot_5x36[i].id,
            "type_name": "Jackpot 6x45",
            "type": "jackpot_5x36",
            "combination": this.processCombination(res.json().data.jackpot_6x45[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Jackpot 4x20
        for (var i = 0; i < res.json().data.jackpot_4x20.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_4x20[i].id,
            "fake_id": "00" + 21420 + res.json().data.jackpot_4x20[i].id,
            "type_name": "Jackpot 4x20",
            "type": "jackpot_4x20",
            "combination": this.processCombination(res.json().data.jackpot_4x20[i].combination)
          }
          this.tableData.push(rowData);
        }
        //Jackpot 7x49
        for (var i = 0; i < res.json().data.jackpot_7x49.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_7x49[i].id,
            "fake_id": "00" + 21749 + res.json().data.jackpot_7x49[i].id,
            "type_name": "Jackpot 7x49",
            "type": "jackpot_7x49",
            "combination": this.processCombination(res.json().data.jackpot_7x49[i].combination)
          }
          this.tableData.push(rowData);
        }
      }
    })
  }

  processCombination(combination: any): string {
    if (combination != null) {
      return "123"
    } else {
      return "Random"
    }
  }

  /*open(content) {
    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }*/

  open(id, fake_id, type, type_name, content) {
    console.log(id);
    console.log(type);
    this.defineModalButtons(type);
    this.modalId = fake_id;
    this.modalType = type_name;
    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }

  defineModalButtons(type: string): void {
    if (type == "lottery_5x36" || type == "jackpot_5x36") {
      this.modalButtonsQuantity = 36;
    }
    if (type == "lottery_6x45" || type == "jackpot_6x45") {
      this.modalButtonsQuantity = 45;
    }
    if (type == "lottery_4x20" || type == "jackpot_4x20") {
      this.modalButtonsQuantity = 20;
    }
    if (type == "lottery_7x49" || type == "jackpot_7x49") {
      this.modalButtonsQuantity = 49;
    }
    this.modalButtonsArray = [];
    for (var i = 0; i < this.modalButtonsQuantity; i++) {
      let button = {
        title: i+1
      }
      this.modalButtonsArray.push(button);
    }
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

  logOut(): void {
    localStorage.removeItem('token');
  }

}
