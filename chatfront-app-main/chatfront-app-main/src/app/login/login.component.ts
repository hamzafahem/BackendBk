import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {
  email: string = '';
  password: string = '';
  rememberMe: boolean = false;

  constructor(private router: Router) {}

  login(): void {
    // Remplacez cette condition par votre logique de validation réelle
    if (this.email === 'amina@gmail.com' && this.password === '123') {
      this.router.navigate(['/home']);  // Redirection vers la page d'accueil
    } else {
      alert('Invalid credentials');
    }
  }
}
