import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { HttpModule } from '@angular/http';
import { FormsModule } from '@angular/forms';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';

import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { PrivateOfficeComponent } from './components/privateOffice/privateOffice.component';
import { LoginComponent } from './components/login/login.component';
import { AuthService } from './services/auth.service';
import { RegisterComponent } from './components/register/register.component';
import { StatusComponent } from './components/status/status.component';
import { EnsureAuthenticated } from './services/ensure-authenticated.service';
import { AuthGuard } from './services/auth-guard.service';
import { LoginRedirect } from './services/login-redirect.service';
import { LotteryService } from './services/lottery.service';
import { TicketsPurchaseService } from './services/tickets-purchase.service';
import { AboutComponent } from './components/about/about.component';
import { HowItWorksComponent } from './components/how-it-works/how-it-works.component';
import { PublicStatisticsComponent } from './components/public-statistics/public-statistics.component';
import { BuyTicketComponent } from './components/buy-ticket/buy-ticket.component';
import { MyBetsComponent } from './components/my-bets/my-bets.component';
import { MyTokensComponent } from './components/my-tokens/my-tokens.component';
import { WalletComponent } from './components/wallet/wallet.component';
import { MyStatisticsComponent } from './components/my-statistics/my-statistics.component';
import { SettingsComponent } from './components/settings/settings.component';
import { FaqComponent } from './components/faq/faq.component';
import { ScratchComponent } from './components/scratch/scratch.component';
import { BuyTestComponent } from './components/buy-test/buy-test.component';
import { CubeComponent } from './components/templates/cube/cube.component';
import { GiveTicketComponent } from './components/give-ticket/give-ticket.component';
import { GiveScratchComponent } from './components/give-scratch/give-scratch.component';
import { NavbarComponent } from './components/templates/navbar/navbar.component';
import { NavbarRegisteredComponent } from './components/templates/navbar-registered/navbar-registered.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    PrivateOfficeComponent,
    LoginComponent,
    RegisterComponent,
    StatusComponent,
    AboutComponent,
    HowItWorksComponent,
    PublicStatisticsComponent,
    BuyTicketComponent,
    MyBetsComponent,
    MyTokensComponent,
    WalletComponent,
    MyStatisticsComponent,
    SettingsComponent,
    FaqComponent,
    ScratchComponent,
    BuyTestComponent,
    CubeComponent,
    GiveTicketComponent,
    GiveScratchComponent,
    NavbarComponent,
    NavbarRegisteredComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    FormsModule,
    NgbModule.forRoot(),
    RouterModule.forRoot([
      {
        path: '',
        component: HomeComponent
      },
      {
        path: 'home',
        component: HomeComponent
      },
      {
        path: 'privateOffice',
        component: PrivateOfficeComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'login',
        component: LoginComponent,
        canActivate: [LoginRedirect]
      },
      {
        path: 'register',
        component: RegisterComponent,
        canActivate: [LoginRedirect]
      },
      {
        path: 'status',
        component: StatusComponent,
        canActivate: [EnsureAuthenticated]
      },
      {
        path: 'about',
        component: AboutComponent
      },
      {
        path: 'public-statistics',
        component: PublicStatisticsComponent
      },
      {
        path: 'how-it-works',
        component: HowItWorksComponent
      },
      {
        path: 'buy-ticket',
        component: BuyTicketComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'give-ticket',
        component: GiveTicketComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'give-scratch',
        component: GiveScratchComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'buy-test',
        component: BuyTestComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'scratch',
        component: ScratchComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'my-bets',
        component: MyBetsComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'my-tokens',
        component: MyTokensComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'wallet',
        component: WalletComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'my-statistics',
        component: MyStatisticsComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'settings',
        component: SettingsComponent,
        canActivate: [AuthGuard]
      },
      {
        path: 'faq',
        component: FaqComponent,
        canActivate: [AuthGuard]
      }
    ])
  ],
  providers: [
    AuthService,
    EnsureAuthenticated,
    AuthGuard,
    LoginRedirect,
    LotteryService,
    TicketsPurchaseService
  ],
  bootstrap: [AppComponent]
})

export class AppModule { }
