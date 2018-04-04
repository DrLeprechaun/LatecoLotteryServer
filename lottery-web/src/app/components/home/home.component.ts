import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { User } from '../../models/user';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  private modalTitle: string;

  constructor(private router: Router, private auth: AuthService, private modalService: NgbModal) {}

  ngOnInit(): void {}

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
