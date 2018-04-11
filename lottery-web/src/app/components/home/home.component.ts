import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { LotteryService } from '../../services/lottery.service';
import { User } from '../../models/user';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  private modalTitle: string;

  constructor(private router: Router, private lottery: LotteryService, private auth: AuthService, private modalService: NgbModal) {}

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

  goLogin(): void {
    this.router.navigateByUrl('/login');
  }

}
