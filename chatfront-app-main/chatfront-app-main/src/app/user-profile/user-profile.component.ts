import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {
  user: any; // Déclaration de la propriété user

  ngOnInit(): void {
    // Initialiser la propriété user ici
    this.user = {
      notificationsEnabled: true,
      about: 'Lorem ipsum dolor sit amet',
      media: ['image1.jpg', 'image2.jpg'],
      files: ['file1.pdf', 'file2.docx'],
      links: ['https://example.com', 'https://another-example.com']
    };
  }
}
