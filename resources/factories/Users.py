from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed


def factory_user(target):

    try:
        data = {
            'faker': {
                'name': fake.first_name(),
                'lastname': fake.last_name(),
                'email': fake.free_email(),
                'password': 'pwd123'
            },
            'login': {
                'name': 'Fernando',
                'lastname': 'Papito',
                'email': 'papito@hotmail.com',
                'password': 'pwd123'
            },
            'be_geek': {
                'name': 'Kim',
                'lastname': 'Dotcom',
                'email': 'kim@dot.com',
                'password': 'pwd123',
                'geek_profile': {
                    'whats': '11999999999',
                    'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.',
                    'printer_repair': 'Sim',
                    'work': 'Remoto',
                    'cost': '50'
                }
            },
            'be_geek_short_desc': {
                'name': 'Bruce',
                'lastname': 'Dinkinson',
                'email': 'bruce@ironmaidem.com',
                'password': 'pwd123',
                'geek_profile': {
                    'whats': '11999999999',
                    'desc': 'Formato PC',
                    'printer_repair': 'Sim',
                    'work': 'Remoto',
                    'cost': '50'
                }
            }
        }
        return data[target]
    except:
        print('Error test data :(')
        raise