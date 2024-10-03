import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
import { RegisterComponent } from './register/register.component';
import { ChatComponent } from './chat/chat.component';
import { CallsComponent } from './calls/calls.component';
import { CalendarComponent } from './calendar/calendar.component';
import { CommunityComponent } from './community/community.component';
import { SettingsComponent } from './settings/settings.component';
import { CreateCommunityComponent } from './create-community/create-community.component';
import { ForgotPasswordComponent } from './forgot-password/forgot-password.component';
import { VerificationComponent } from './verification/verification.component';
import { EditUserProfileComponent } from './edit-user-profile/edit-user-profile.component';



@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    LoginComponent,
    HomeComponent,
    RegisterComponent,
    ChatComponent,
    CallsComponent,
    CalendarComponent,
    CommunityComponent,
    SettingsComponent,
    CreateCommunityComponent,
    ForgotPasswordComponent,
    VerificationComponent,
    EditUserProfileComponent,
   
    

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
