import { Component } from '@angular/core';
import { Router } from '@angular/router'; // Importer le service Router

@Component({
  selector: 'app-verification',
  templateUrl: './verification.component.html',
  styleUrls: ['./verification.component.scss']
})
export class VerificationComponent {
  code: string[] = ['', '', '', '']; // Tableau pour stocker les chiffres du code

  // Injecter le service Router
  constructor(private router: Router) {}

  // Méthode pour vérifier le code et rediriger
  verifyCode(): void {
    // Convertir le tableau de chiffres en une seule chaîne
    const enteredCode = this.code.join('');
    
    // Vérifiez ici le code saisi ; remplacez '1234' par la logique réelle
    if (enteredCode === '1234') {
      this.router.navigate(['/home']); // Rediriger vers la page d'accueil
    } else {
      alert('Invalid code. Please try again.'); // Afficher un message d'erreur
    }
  }

  // Méthode pour gérer les changements dans les champs du code
  onCodeChange(index: number, event: any): void {
    this.code[index] = event.target.value;

    // Passer à l'input suivant lorsque la valeur est entrée
    if (index < 3 && event.target.value) {
      const nextInput = document.querySelectorAll('.code-inputs input')[index + 1] as HTMLInputElement;
      if (nextInput) nextInput.focus();
    }
  }
}
