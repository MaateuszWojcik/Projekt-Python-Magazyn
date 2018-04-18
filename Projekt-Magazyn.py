#Zaimportuj bibliotekę pymysql
import pymysql
import currencylayer
import AccesKey

class DBConnect:
    def __init__(self):
        try:
            #pymysql.connect do uzupełnienia wedle wlasnych danych z MySQl Workbench
            self.conn = pymysql.connect(AccesKey.host,AccesKey.login,AccesKey.passwd,'Magazyn', charset='utf8')
            print('Witaj w magazynie sprzętu do futbolu amerykańskiego!')
            self.logowanie()
        except:
            print('błędne dane logowania!')
    def logowanie(self):
        login = input('Podaj login: ')
        passwd = input('Podaj passwd: ')
        self.c = self.conn.cursor()
        self.c.execute('SELECT * FROM logowanie WHERE login=%s and passwd=%s', (login, passwd))
        LogRes = self.c.fetchall()
        #print(LogRes)
        if(len(LogRes) == 1):
            print('Pomyślne logowanie')
            self.menu()
        else:
            print('Niepoprawny login lub hasło!')
            self.logowanie()
    def menu(self):
        while(True):
            dec = input('Wybierz kategorię: K-Kaski, P-Pady, S-Spodnie, F-Firmy B-Buty, PIL-Pilki, ALL-Wypisz Wszystkie I-insert, D-delete Q-Exit').upper()
            if(dec == 'K'):
                self.kaski()
            elif (dec == 'P'):
                self.pady()
            elif(dec == 'S'):
                self.spodnie()
            elif (dec == 'F'):
                self.firmy()
            elif (dec == 'B'):
                self.buty()
            elif (dec == 'PIL'):
                self.pilki()
            elif(dec == "ALL"):
                self.kaski()
                self.pady()
                self.spodnie()
                self.firmy()
                self.buty()
                self.pilki()
            elif(dec == 'I'):
                self.insert()
            elif (dec == 'D'):
                self.delete()
            elif(dec == 'Q'):
                print('Koniec')
                break
            else:
                print('Podałeś krzaki')

    def kaski(self):
        self.c.execute('SELECT * FROM Kaski')
        Kaski = self.c.fetchall()
        i=1
        for row in Kaski:
            #row[1] nr_ser_k
            #row[2] nazwa_k <--- uzupełniamy
            #row[3] rozmiar_kask <--- uzupełniamy
            #row[4] klasa_ochrony_glowy
            #row[5] firma_k <--- uzupełniamy
            #row[6] cena_k_$

            if(row[1] is None or row[4] is None or row[6] is None):
                print('|%5i|          |%20s|%4s|    |%10s |       |' % (i, row[2], row[3], row[5]))
            else:
                print('|%5i|%10s|%20s|%4s|%4s|%10s |%6.2f |' % (i, row[1], row[2], row[3], row[4], row[5],row[6]))
            i+=1

    def pady(self):
        self.c.execute('SELECT * FROM Pady ')
        Pady = self.c.fetchall()
        i = 1
        for row in Pady:
            # row[1] nr_ser_p
            # row[2] nazwa_p <--- uzupełniamy
            # row[3] rozmiar_pad <--- uzupełniamy
            # row[4] firma_p <--- uzupełniamy
            # row[5] cena_p_$
            if (row[1] is None or row[5] is None):
                print('|%5i|          |%30s|%3s|%10s|      |' % (i, row[2], row[3], row[4]))
            else:
                print('|%5i|%10i|%30s|%3s|%10s|%6.2f|' % (i, row[1], row[2], row[3], row[4],row[5]))
            i += 1

    def spodnie(self):
        self.c.execute('SELECT * FROM Spodnie')
        Spodnie = self.c.fetchall()
        i = 1
        for row in Spodnie:
            # row[1] nr_ser_s
            # row[2] nazwa_s <--- uzupełniamy
            # row[3] rozmiar_spod <--- uzupełniamy
            # row[4] firma_s <--- uzupełniamy
            # row[5] cena_s_$
            if (row[1] is None or row[5] is None):
                print('|%5i|          |%25s|%3s|%10s|      |' % (i, row[2], row[3], row[4]))
            else:
                print('|%5i|%10i|%25s|%3s|%10s|%6.2f|' % (i, row[1], row[2], row[3], row[4], row[5]))
            i += 1

    def firmy(self):
        self.c.execute('SELECT * FROM Firmy')
        Firmy = self.c.fetchall()
        i = 1
        for row in Firmy:
            print('|%5i|%15s|%5i|' % (i, row[1], row[2]))
            i += 1

    def buty(self):
        self.c.execute('SELECT * FROM Buty')
        Buty = self.c.fetchall()
        i = 1
        for row in Buty:
            # row[1] nr_ser_b
            # row[2] nazwa_b <--- uzupełniamy
            # row[3] rozmiar_but <--- uzupełniamy
            # row[4] firma_b <--- uzupełniamy
            # row[5] cena_b_$
            if (row[1] is None or row[5] is None):
                print('|%5i|          |%40s|%5s|%12s|      |' % (i, row[2], row[3], row[4]))
            else:
                print('|%5i|%10i|%40s|%5s|%12s|%6.2f|' % (i, row[1], row[2], row[3], row[4], row[5]))
            i += 1

    def pilki(self):
        self.c.execute('SELECT * FROM Pilki')
        Pilki = self.c.fetchall()
        i = 1
        for row in Pilki:
            # row[1] nr_ser_pil
            # row[2] nazwa_pil <--- uzupełniamy
            # row[3] firma_pil <--- uzupełniamy
            # row[4] cena_pil_$
            if (row[1] is None or row[4] is None):
                print('|%5i|          |%30s|%10s|      |' % (i, row[2], row[3]))
            else:
                print('|%5i|%10i|%30s|%10s|%6.2f|' % (i, row[1], row[2], row[3], row[4]))
            i += 1

    def insert(self):
        dec = input(
            'Co chcesz dodać? K-Kask, P-Pad, S-Spodnie, F-Firmę, B-Buty, PIL-Pilkę').upper()
        if (dec == 'K'):
            nazwaTab ='kaski'
            nazwa = 'nazwa_k'
            rozmiar = 'rozmiar_kask'
            firma = 'firma_k'
            nazwa_k = input("Wpisz nazwe kasku: ")
            rozmiar_kask = input("Wpisz rozmiar kasku: ")
            firma_k = input("Wpisz firme kasku: ")
            self.c.execute('INSERT INTO '+nazwaTab+' ('+nazwa+', '+rozmiar+', '+firma+') VALUES (%s,%s,%s)', (nazwa_k, rozmiar_kask, firma_k))
            self.conn.commit()
        #   self.kaski()
        elif (dec == 'P'):
            nazwaTab = 'pady'
            nazwa = 'nazwa_p'
            rozmiar = 'rozmiar_pad'
            firma = 'firma_p'
            nazwa_p = input("Wpisz nazwe pada: ")
            rozmiar_pad = input("Wpisz rozmiar pada: ")
            firma_p = input("Wpisz firme pada: ")
            self.c.execute('INSERT INTO '+nazwaTab+'('+nazwa+', '+rozmiar+', '+firma+') VALUES (%s,%s,%s)', (nazwa_p, rozmiar_pad, firma_p))
            self.conn.commit()
        #   self.pady()
        elif (dec == 'S'):
            nazwaTab = 'spodnie'
            nazwa = 'nazwa_s'
            rozmiar = 'rozmiar_spod'
            firma = 'firma_s'
            nazwa_s = input("Wpisz nazwe spodni: ")
            rozmiar_spod = input("Wpisz rozmiar spodni: ")
            firma_s = input("Wpisz firme spodni: ")
            self.c.execute('INSERT INTO ' + nazwaTab + '(' + nazwa + ', ' + rozmiar + ', ' + firma + ') VALUES (%s,%s,%s)',(nazwa_s, rozmiar_spod, firma_s))
            self.conn.commit()
        #   self.spodnie()
        elif (dec == 'F'):
            nazwaTab = 'firma'
            nazwa = 'nazwa_f'
            data = 'data_zal'
            nazwa_f = input("Wpisz nazwe firmy: ")
            data_zal = input("Wpisz date powstania firmy: ")
            self.c.execute(
                'INSERT INTO ' + nazwaTab + '(' + nazwa + ', ' + data + ') VALUES (%s,%s)',
                (nazwa_f, data_zal))
            self.conn.commit()
        #   self.firmy()
        elif (dec == 'B'):
            nazwaTab = 'buty'
            nazwa = 'nazwa_b'
            rozmiar = 'rozmiar_but'
            firma = 'firma_b'
            nazwa_b = input("Wpisz model butów: ")
            rozmiar_but = input("Wpisz rozmiar butów: ")
            firma_b = input("Wpisz firme butów: ")
            self.c.execute(
                'INSERT INTO ' + nazwaTab + '(' + nazwa + ', ' + rozmiar + ', ' + firma + ') VALUES (%s,%s,%s)',
                (nazwa_b, rozmiar_but, firma_b))
            self.conn.commit()
        #   self.buty()
        elif (dec == 'PIL'):
            nazwaTab = 'pilki'
            nazwa = 'nazwa_pil'
            firma = 'firma_pil'
            nazwa_pil = input("Wpisz model piłki: ")
            firma_pil = input("Wpisz firme piłki: ")
            self.c.execute(
                'INSERT INTO ' + nazwaTab + '(' + nazwa +', ' + firma + ') VALUES (%s,%s)',
                (nazwa_pil, firma_pil))
            self.conn.commit()
        #   self.pilki()
        else:
            print('Ups, coś poszło nie tak. Spróbuj jeszcze raz! :)')
    def delete(self):
        flag = True
        nazwy = input(
            'Co chcesz usunąć: K-Kask, P-Pad, S-Spodnie, F-Firmę B-Buty, PIL-Piłkę').upper()
        if (nazwy == 'K'):
            self.kaski()
            nazwaTab = 'kaski'
            nazwa = 'nazwa_k'
        elif (nazwy == 'P'):
            self.pady()
            nazwaTab = 'pady'
            nazwa = 'nazwa_p'
        elif (nazwy == 'S'):
            self.spodnie()
            nazwaTab = 'spodnie'
            nazwa = 'nazwa_s'
        elif (nazwy == 'F'):
            self.firmy()
            nazwaTab = 'firmy'
            nazwa = 'nazwa_f'
        elif (nazwy == 'B'):
            self.buty()
            nazwaTab = 'buty'
            nazwa = 'nazwa_b'
        elif (nazwy == 'PIL'):
            self.pilki()
            nazwaTab = 'pilki'
            nazwa = 'nazwa_pil'
        else:
            print('Tego tutaj nie usuniesz :( ')
            flag = False

        if flag:
            nazwa_usuwana = input('Nazwa Elementu=')
            print("Usuwamy")
            self.c.execute('DELETE FROM '+nazwaTab+' WHERE '+nazwa+' = %s', nazwa_usuwana)
            dec = input('Na pewno usuwamy? T/N').upper()
            if (dec == 'T'):
                self.conn.commit()
                print('usunięto')
            else:
                self.conn.rollback()
                print('Wracasz do gry!')

o = DBConnect()
# ctrl + / komentuje cały zaznaczony wiersz
