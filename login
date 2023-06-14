class Usuario:
    def __init__(self, nome, email, senha):
        self.nome = nome
        self.email = email
        self.senha = senha

class SistemaCadastroLogin:
    def __init__(self):
        self.usuarios = []

    def cadastrar(self):
        print('Cadastro de Usuário')
        nome = input("Digite o nome: ")
        email = input("Digite o e-mail: ")
        senha = input("Digite a senha: ")
        usuario = Usuario(nome, email, senha)
        self.usuarios.append(usuario)
        print('Usuário cadastrado com sucesso!')

    def fazer_login(self):
        print('Login')
        email = input('Digite o e-mail: ')
        senha = input('Digite a senha: ')

        for usuario in self.usuarios:
            if usuario.email == email and usuario.senha == senha:
                print('Login bem-sucedido!')
                return

        print('Credenciais inválidas. Por favor, tente novamente.')

sistema = SistemaCadastroLogin()

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
