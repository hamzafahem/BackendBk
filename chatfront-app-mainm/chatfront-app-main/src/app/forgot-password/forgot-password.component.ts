import { Component } from '@angular/core';
import { Router } from '@angular/router';  // Importer le service Router

@Component({
  selector: 'app-forgot-password',
  templateUrl: './forgot-password.component.html',
  styleUrls: ['./forgot-password.component.scss']
})
export class ForgotPasswordComponent {
  email: string = '';

  // Injecter le service Router
  constructor(private router: Router) {}

  resetPassword(): void {
    if (this.email) {
      alert('Password reset link sent to ' + this.email); // Implémentez la logique réelle de réinitialisation du mot de passe ici
      
      // Rediriger vers la page de vérification après la réinitialisation du mot de passe
      this.router.navigate(['/verification']);
    } else {
      alert('Please enter your email address');
    }
  }
}
