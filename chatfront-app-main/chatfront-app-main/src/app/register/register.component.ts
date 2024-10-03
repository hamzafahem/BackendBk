import { Component } from '@angular/core';
import { Router } from '@angular/router';  // Importer le service Router

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent {
  firstName: string = '';
  lastName: string = '';
  email: string = '';
  password: string = '';
  confirmPassword: string = '';

  // Injecter le service Router
  constructor(private router: Router) {}

  register(): void {
    if (this.email && this.firstName && this.lastName && this.password && this.password === this.confirmPassword) {
      alert('Registration successful!'); // Implémentez la logique d'inscription réelle ici

      // Rediriger vers la page de connexion après une inscription réussie
      this.router.navigate(['/login']);
    } else {
      alert('Please fill all fields correctly');
    }
  }
}
