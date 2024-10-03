import { ComponentFixture, TestBed } from '@angular/core/testing';
import { FormsModule } from '@angular/forms'; // Importez FormsModule pour ngModel
import { ChatComponent } from './chat.component';
import { By } from '@angular/platform-browser';

// Redéclaration des interfaces pour simplifier les tests
interface Message {
  text: string;
  sent: boolean;
}

interface Chat {
  name: string;
  avatarUrl: string;
  lastMessage: string;
  messages: Message[];
}

describe('ChatComponent', () => {
  let component: ChatComponent;
  let fixture: ComponentFixture<ChatComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ChatComponent ],
      imports: [ FormsModule ] // Importez FormsModule pour les tests
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ChatComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  // Ajoutez des tests spécifiques pour vos méthodes et fonctionnalités ici
  it('should select a chat', () => {
    const chat: Chat = { name: 'Test Chat', avatarUrl: '', lastMessage: '', messages: [] };
    component.selectChat(chat);
    expect(component.selectedChat).toEqual(chat);
    expect(component.showProfilePopup).toBeFalse();
  });

  it('should show user profile', () => {
    const chat: Chat = { name: 'Test User', avatarUrl: '', lastMessage: '', messages: [] };
    const event = new MouseEvent('click');
    component.showUserProfile(chat, event);
    expect(component.currentUserProfile).toEqual(chat);
    expect(component.showProfilePopup).toBeTrue();
  });

  it('should hide user profile', () => {
    component.hideUserProfile();
    expect(component.showProfilePopup).toBeFalse();
  });

  // Ajoutez plus de tests pour d'autres méthodes
});
