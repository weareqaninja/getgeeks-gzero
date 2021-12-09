
def factory_new_user():

    return {
        'name': 'Clint Barton',
        'email': 'barton@shield.com',
        'password': 'pwd123'
    }

def factory_get_user():

    return {
        'name': 'Gwen Stacy',
        'email': 'stacy@ozcorp.com',
        'password': 'pwd123'
    }

def factory_remove_user():

    return {
        'name': 'Thaddeus Ross',
        'email': 'ross@gmail.com',
        'password': 'pwd123'
    }

def factory_update_user():

    email = 'papito@qaninja.com.br'

    return {
        'before': {
            'name': 'Papito Fernando',
            'email': email,
            'password': 'pwd123'
        },
        'after': {
            'name': 'Fernando Papito',
            'email': email,
            'whatsapp': '11999999999',
            'avatar': 'https://avatars.githubusercontent.com/u/11590362'
        }
    }


def factory_user_session(target):

    name = 'Kate Bishop'
    email = 'kate@hotmail.com'
    password = 'pwd123'

    data = {
        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login': {
            'email': email,
            'password': password
        }
    }

    return data[target]


def factory_be_geek():

    return {
        'name': 'Joao Lucas',
        'email': 'joao@qaninja.com.br',
        'password': 'pwd123',
        'geek_profile': {
            'whatsapp': '11999999999',
            'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.',
            'printer_repair': 'Sim',
            'work': 'Presencial',
            'cost': '150.99'
        }
    }