class Usuario:
    def cadastrar(self):
        print('Cadastro de Usuário')
        self.nome = input('Digite o nome: ')
        self.email = input('Digite o e-mail: ')
        self.senha = input('Digite a senha: ')
        print('Usuário cadastrado com sucesso!')

    def fazer_login(self):
        print('Login')
        email = input('Digite o e-mail: ')
        senha = input('Digite a senha: ')

        if self.email == email and self.senha == senha:
            print('Login bem-sucedido!')
        else:
            print('Credenciais inválidas. Por favor, tente novamente.')

sistema = Usuario()

while True:
    print('1. Cadastrar novo usuário')
    print('2. Fazer login')
    print('3. Sair')

    opcao = input('Escolha uma opção: ')

    if opcao == '1':
        sistema.cadastrar()
    elif opcao == '2':
        sistema.fazer_login()
    elif opcao == '3':
        break
    else:
        print('Opção inválida. Por favor, escolha novamente.')
