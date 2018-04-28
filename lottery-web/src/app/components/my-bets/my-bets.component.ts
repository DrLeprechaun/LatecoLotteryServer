import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';
import { CombinationUpdate } from '../../models/combination-update';


@Component({
  selector: 'app-my-bets',
  templateUrl: './my-bets.component.html',
  styleUrls: ['./my-bets.component.css']
})
export class MyBetsComponent implements OnInit {

  rawData: any[] = [];
  tableData: any[] = [];
  archiveRawData: any[] = [];
  archiveTableData: any[] = [];
  modalId: string = "";
  modalType: string = "";
  combinationQuantity: number = 0;
  modalButtonsQuantity: number = 0;
  modalButtonsArray: any[] = [];
  modalButtonsTable: any[] = [];
  editableCombination: number[] = [];
  lotteryType: string = "";
  editedRecordId: number;

  constructor(private lottery: LotteryService, private modalService: NgbModal) { }

  ngOnInit() {
    this.loadData();
  }

  loadData(): void {
    //Active bets
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
            "id": res.json().data.lottery_6x45[i].id,
            "fake_id": "00" + 10645 + res.json().data.lottery_6x45[i].id,
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
            "id": res.json().data.jackpot_6x45[i].id,
            "fake_id": "00" + 21645 + res.json().data.jackpot_6x45[i].id,
            "type_name": "Jackpot 6x45",
            "type": "jackpot_6x45",
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
    });

    //Archive
    this.lottery.getBetsArchive()
    .then((res) => {
      if (res.json().status === 'success') {
        console.log(res.json());
        this.archiveTableData = [];
        this.archiveRawData = res.json().data;
        //Lottery 5x36
        for (var i = 0; i < res.json().data.lottery_5x36.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_5x36[i].id,
            "fake_id": "00" + 10536 + res.json().data.lottery_5x36[i].id,
            "type_name": "Lottery 5x36",
            "type": "lottery_5x36",
            "combination": this.processCombination(res.json().data.lottery_5x36[i].my_combination),
            "won_combination": this.processCombination(res.json().data.lottery_5x36[i].win_combination),
            "is_win": res.json().data.lottery_5x36[i].is_win,
            "date": res.json().data.lottery_5x36[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Lottery 6x45
        for (var i = 0; i < res.json().data.lottery_6x45.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_6x45[i].id,
            "fake_id": "00" + 10645 + res.json().data.lottery_6x45[i].id,
            "type_name": "Lottery 6x45",
            "type": "lottery_6x45",
            "combination": this.processCombination(res.json().data.lottery_6x45[i].my_combination),
            "won_combination": this.processCombination(res.json().data.lottery_6x45[i].win_combination),
            "is_win": res.json().data.lottery_6x45[i].is_win,
            "date": res.json().data.lottery_6x45[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Lottery 4x20
        for (var i = 0; i < res.json().data.lottery_4x20.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_4x20[i].id,
            "fake_id": "00" + 10420 + res.json().data.lottery_4x20[i].id,
            "type_name": "Lottery 4x20",
            "type": "lottery_4x20",
            "combination": this.processCombination(res.json().data.lottery_4x20[i].my_combination),
            "won_combination": this.processCombination(res.json().data.lottery_4x20[i].win_combination),
            "is_win": res.json().data.lottery_4x20[i].is_win,
            "date": res.json().data.lottery_4x20[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Lottery 7x49
        for (var i = 0; i < res.json().data.lottery_7x49.length; i++) {
          let rowData = {
            "id": res.json().data.lottery_7x49[i].id,
            "fake_id": "00" + 10749 + res.json().data.lottery_7x49[i].id,
            "type_name": "Lottery 7x49",
            "type": "lottery_7x49",
            "combination": this.processCombination(res.json().data.lottery_7x49[i].my_combination),
            "won_combination": this.processCombination(res.json().data.lottery_7x49[i].win_combination),
            "is_win": res.json().data.lottery_7x49[i].is_win,
            "date": res.json().data.lottery_7x49[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Jackpot 5x36
        for (var i = 0; i < res.json().data.jackpot_5x36.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_5x36[i].id,
            "fake_id": "00" + 21536 + res.json().data.jackpot_5x36[i].id,
            "type_name": "Jackpot 5x36",
            "type": "jackpot_5x36",
            "combination": this.processCombination(res.json().data.jackpot_5x36[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_5x36[i].win_combination),
            "is_win": res.json().data.jackpot_5x36[i].is_win,
            "date": res.json().data.jackpot_5x36[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Jackpot 6x45
        for (var i = 0; i < res.json().data.jackpot_6x45.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_6x45[i].id,
            "fake_id": "00" + 21645 + res.json().data.jackpot_6x45[i].id,
            "type_name": "Jackpot 6x45",
            "type": "jackpot_6x45",
            "combination": this.processCombination(res.json().data.jackpot_6x45[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_6x45[i].win_combination),
            "is_win": res.json().data.jackpot_6x45[i].is_win,
            "date": res.json().data.jackpot_6x45[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Jackpot 4x20
        for (var i = 0; i < res.json().data.jackpot_4x20.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_4x20[i].id,
            "fake_id": "00" + 21420 + res.json().data.jackpot_4x20[i].id,
            "type_name": "Jackpot 4x20",
            "type": "jackpot_4x20",
            "combination": this.processCombination(res.json().data.jackpot_4x20[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_4x20[i].win_combination),
            "is_win": res.json().data.jackpot_4x20[i].is_win,
            "date": res.json().data.jackpot_4x20[i].date
          }
          this.archiveTableData.push(rowData);
        }
        //Jackpot 7x49
        for (var i = 0; i < res.json().data.jackpot_7x49.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_7x49[i].id,
            "fake_id": "00" + 21749 + res.json().data.jackpot_7x49[i].id,
            "type_name": "Jackpot 7x49",
            "type": "jackpot_7x49",
            "combination": this.processCombination(res.json().data.jackpot_7x49[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_7x49[i].win_combination),
            "is_win": res.json().data.jackpot_7x49[i].is_win,
            "date": res.json().data.jackpot_7x49[i].date
          }
          this.archiveTableData.push(rowData);
        }
      }
    });
  }

  processCombination(combination: number[]): string {
    if (combination != null) {
      if (combination.length > 0) {
        return combination.join(" ");
      } else {
        return "Random"
      }
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

    this.editableCombination = [];
    for (var i = 0; i < this.rawData[type].length; i++){
      if (this.rawData[type][i].id == id) {
        this.editableCombination = this.rawData[type][i].combination;
        break;
      }
    }

    this.defineModalButtons(type);
    this.modalId = fake_id;
    this.modalType = type_name;
    this.lotteryType = type;
    this.editedRecordId = id;
    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
      this.updateCombination();
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }

  defineModalButtons(type: string): void {
    if (type == "lottery_5x36" || type == "jackpot_5x36") {
      this.modalButtonsQuantity = 36;
      this.combinationQuantity = 5;
    }
    if (type == "lottery_6x45" || type == "jackpot_6x45") {
      this.modalButtonsQuantity = 45;
      this.combinationQuantity = 6;
    }
    if (type == "lottery_4x20" || type == "jackpot_4x20") {
      this.modalButtonsQuantity = 20;
      this.combinationQuantity = 4;
    }
    if (type == "lottery_7x49" || type == "jackpot_7x49") {
      this.modalButtonsQuantity = 49;
      this.combinationQuantity = 7;
    }

    this.setModalButtonsArray(this.modalButtonsQuantity);
  }

  private setModalButtonsArray(max: number): void {

    this.modalButtonsArray = [];
    this.modalButtonsTable = [];

    //Array
    for (var i = 0; i < this.modalButtonsQuantity; i++) {
      //let buttonClass = "btn btn-dark";
      let buttonClass = "btn button-black";
      if (this.editableCombination != null) {
        if (this.editableCombination.indexOf(i+1) > -1) {
          //buttonClass = "btn btn-danger";
          buttonClass = "btn button-red";
        }
      } else {
        this.editableCombination = [];
      }
      let button = {
        title: i+1,
        class: buttonClass
      }
      this.modalButtonsArray.push(button);
    }

    //Table
    if (this.modalButtonsQuantity == 36) {
      let k = 0;
      for (var i = 0; i < 6; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 6; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 45) {
      let k = 0;
      for (var i = 0; i < 5; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 9; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 20) {
      let k = 0;
      for (var i = 0; i < 4; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 49) {
      let k = 0;
      for (var i = 0; i < 7; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
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

  editCombination(val: number) {

    //Number button
    //if (document.getElementById("button_" + val).getAttribute("class") != "btn btn-danger") {
    if (document.getElementById("button_" + val).getAttribute("class") != "btn button-red button-round") {
      if (this.editableCombination.length < this.combinationQuantity) {
        //document.getElementById("button_" + val).setAttribute("class", "btn btn-danger");
        document.getElementById("button_" + val).setAttribute("class", "btn button-red button-round");
        this.editableCombination.push(val);
      }
    } else {
      //document.getElementById("button_" + val).setAttribute("class", "btn btn-dark");
      document.getElementById("button_" + val).setAttribute("class", "btn button-black button-round");
      this.editableCombination.splice(this.editableCombination.indexOf(val, 0), 1);
    }

    //Save button
    if (this.editableCombination.length == this.combinationQuantity || this.editableCombination.length == 0) {
      document.getElementById("saveButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("saveButton").setAttribute("style", "visibility: hidden;");
    }
  }

  updateCombination() {
    console.log("UPDATE");
    console.log(this.editableCombination);
    console.log(this.lotteryType);
    console.log(this.editedRecordId);

    console.log(new CombinationUpdate(this.editedRecordId, this.lotteryType, this.editableCombination));

    this.lottery.updateCombination(new CombinationUpdate(this.editedRecordId, this.lotteryType, this.editableCombination))
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.loadData();
      }
    },
    (err) => {
      console.log(err);
    })

    this.editableCombination = [];
    this.lotteryType = "";
    this.editedRecordId = 0;
    this.combinationQuantity = 0;
    this.modalId = "";
    this.modalType = "";
    this.modalButtonsQuantity = 0;
    this.modalButtonsArray = [];
    this.modalButtonsTable = [];
  }

  logOut(): void {
    localStorage.removeItem('token');
  }

}
