import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ChatComponent } from './chat/chat.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { CalendarComponent } from './calendar/calendar.component';
import { CallsComponent } from './calls/calls.component';
import { CreateCommunityComponent } from './create-community/create-community.component';
import { CommunityComponent } from './community/community.component';
import { SettingsComponent } from './settings/settings.component'; // Assurez-vous que le chemin est correct
import { ForgotPasswordComponent } from './forgot-password/forgot-password.component'; // Assurez-vous que le chemin est correct
import { VerificationComponent } from './verification/verification.component';
import { EditUserProfileComponent } from './edit-user-profile/edit-user-profile.component';


const routes: Routes = [
  { path: '', redirectTo: '/login', pathMatch: 'full' },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'home', component: HomeComponent },
  { path: 'chat', component: ChatComponent }, // Assurez-vous que cette route est correcte
  { path: 'calendar', component: CalendarComponent }, // Assurez-vous que cette route est correcte
  { path: 'create-community', component:CreateCommunityComponent } ,// Assurez-vous que cette route est correcte
  { path: 'communities', component: CommunityComponent },
  { path: '', redirectTo: '/communities', pathMatch: 'full' },
  { path: 'settings', component: SettingsComponent },
  { path: 'edit-profile', component: EditUserProfileComponent },



  // Ajoutez d'autres routes ici
  { path: '', redirectTo: '/login', pathMatch: 'full' } ,// Route par défaut
  { path: 'login', component: LoginComponent },
  { path: 'forgot-password', component: ForgotPasswordComponent },
  { path: 'verification', component: VerificationComponent },




];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
