import { Component } from '@angular/core';
import { Router } from '@angular/router'; // Importation du service Router


interface Message {
  text: string;
  sent: boolean;
}

interface Chat {
  name: string;
  avatarUrl: string;
  lastMessage: string;
  messages: Message[];
  notifications?: string;
  about?: string;
  medias?: { url: string }[];
  files?: { name: string, url: string }[];
  links?: { name: string, url: string }[];
}

interface Group {
  name: string;
  iconClass: string;
}

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.scss']
})
export class ChatComponent {
  

  notificationsEnabled: boolean = true;
  showEmojiPicker: boolean = false;
  searchTerm: string = '';
  selectedChat: Chat | null = null;
  newMessage: string = '';
  showProfilePopup: boolean = false;
  currentUserProfile: Chat | null = null;

  chats: Chat[] = [
    {
      name: 'AMINA',
      avatarUrl: 'assets/images/profil3.png',
      lastMessage: 'Hey there!',
      messages: [
        { text: 'Hello!', sent: true },
        { text: 'How are you?', sent: false }
      ],
      notifications: 'Vous avez 3 nouvelles notifications',
      about: 'Utilisateur actif depuis 2020',
      medias: [{ url: 'assets/images/media1.png' }],
      files: [{ name: 'Document.pdf', url: 'assets/files/document.pdf' }],
      links: [{ name: 'Site web', url: 'https://example.com' }]
    },
    {
      name: 'HAMZA',
      avatarUrl: 'assets/images/profil2.png',
      lastMessage: 'Good morning!',
      messages: [
        { text: 'Good morning!', sent: false },
        { text: 'How can I help you?', sent: true }
      ],
      notifications: 'Vous avez 2 nouvelles notifications',
      about: 'Utilisateur premium depuis 2019',
      medias: [{ url: 'assets/images/media2.png' }],
      files: [{ name: 'Image.jpg', url: 'assets/files/image.jpg' }],
      links: [{ name: 'Portfolio', url: 'https://portfolio.com' }]
    },
    {
      name: 'OUMAIMA',
      avatarUrl: 'assets/images/profil1.png',
      lastMessage: 'Hello!',
      messages: [
        { text: 'Hi!', sent: true },
        { text: 'What are you doing?', sent: false }
      ],
      notifications: 'Vous avez 2 nouvelles notifications',
      about: 'Utilisateur premium depuis 2019',
      medias: [{ url: 'assets/images/media2.png' }],
      files: [{ name: 'Image.jpg', url: 'assets/files/image.jpg' }],
      links: [{ name: 'Portfolio', url: 'https://portfolio.com' }]
    }
  ];

  groups: Group[] = [
    { name: 'Family', iconClass: 'fa-users' },
    { name: 'Friends', iconClass: 'fa-user-friends' }
  ];

  constructor(private router: Router) {} // Injection du service Router

  editProfile() {
    // Redirection vers la page de modification du profil
    this.router.navigate(['/edit-profile']);
  }

  toggleNotifications(): void {
    this.notificationsEnabled = !this.notificationsEnabled;
    console.log('Notifications enabled:', this.notificationsEnabled);
    // Ajoutez ici la logique pour persister l'état des notifications
  }

  selectChat(chat: Chat): void {
    this.selectedChat = chat;
  }

  sendMessage(): void {
    if (this.selectedChat && this.newMessage.trim()) {
      this.selectedChat.messages.push({ text: this.newMessage, sent: true });
      this.newMessage = '';
    } else {
      alert('Le message ne peut pas être vide!');
    }
  }

  makeCall(): void {
    console.log('Appel normal déclenché');
  }

  makeVideoCall(): void {
    console.log('Appel vidéo déclenché');
  }

  openMenu(): void {
    console.log('Menu ouvert');
  }

  attachFile(): void {
    console.log('Attacher un fichier');
  }

  sendAudio(): void {
    console.log('Envoyer un message audio');
  }

  attachImage(): void {
    console.log('Attacher une image');
  }

  openEmojiPicker(): void {
    this.showEmojiPicker = !this.showEmojiPicker;
    console.log('Ouvrir/fermer le sélecteur d\'emoji');
  }

  showUserProfile(chat: Chat, event: MouseEvent): void {
    event.stopPropagation();
    this.currentUserProfile = chat;
    this.showProfilePopup = true;
  }

  hideUserProfile(): void {
    this.showProfilePopup = false;
    this.currentUserProfile = null;
  }

  getNotifications(chat: Chat): string | undefined {
    return chat.notifications;
  }

  markNotificationsAsRead(chat: Chat): void {
    if (chat.notifications) {
      chat.notifications = 'Aucune nouvelle notification';
    }
  }

  filteredChats(): Chat[] {
    if (!this.searchTerm) {
      return this.chats;
    }
    const lowerCaseSearchTerm = this.searchTerm.toLowerCase();
    return this.chats.filter(chat =>
      chat.name.toLowerCase().includes(lowerCaseSearchTerm)
    );
  }
  mediaList = [
    { url: 'assets/images/img1.png' },
    { url: 'assets/images/img2.png' },
    { url: 'assets/images/img3.png' }
  ];
}


