INSERT INTO chat.users (login, password)
VALUES
  ('userone', 'passwordone'),
  ('usertwo', 'passwordtwo'),
  ('userthree', 'passwordthree'),
  ('userfour', 'passwordfour'),
  ('userfive', 'passwordfive')

INSERT INTO chat.chatrooms (name, owner)
VALUES
  ('general', (SELECT id FROM User WHERE login = 'userone')),
  ('random', (SELECT id FROM User WHERE login = 'userone')),
  ('resources', (SELECT id FROM User WHERE login = 'userone')),
  ('music', (SELECT id FROM User WHERE login = 'userone')),
  ('art', (SELECT id FROM User WHERE login = 'userone'));

INSERT INTO chat.messages (author, chatroom, text, datetime)
VALUES
  ((SELECT id FROM User WHERE login = 'jnidorin'), 1, 'This is general channel. Feel free to talk!', (SELECT NOW()::timestamp)),
  ((SELECT id FROM User WHERE login = 'jnidorin'), 2, 'This is random channel. Feel free to talk!', (SELECT NOW()::timestamp)),
  ((SELECT id FROM User WHERE login = 'jnidorin'), 3, 'This is resources channel. Feel free to talk!', (SELECT NOW()::timestamp)),
  ((SELECT id FROM User WHERE login = 'jnidorin'), 4, 'This is music channel. Feel free to talk!', (SELECT NOW()::timestamp)),
  ((SELECT id FROM User WHERE login = 'jnidorin'), 5, 'This is art channel. Feel free to talk!', (SELECT NOW()::timestamp));
