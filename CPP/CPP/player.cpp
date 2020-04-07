#include <iostream>
#include <string>
#include <fstream>

using namespace std;

void PLAYER(){
    public:
    struct cp{
    string id;
    string name;
    string score;
    };
};

int main(){
    PLAYER p[5];
    string id;
    string name;
    string score;
    string n;
    ifstream in;
    ofsream out;

    out.open("player.txt");
    for(int i=0;i<5;i++)
    {
        cout << "Enter ID" << i << endl;
        cin >> p[i].id;
        id = p[i].id;
        cout << "Enter Name" << i << endl;
        cin >> p[i].name;
        name = p[i].name;
        cout << "Enter Score" << i << endl;
        cin >> p[i].score;
        score = p[i].score
        
        out << id << endl;
        out << name << endl;
        out << score << endl;
    }
    out.close();

    in.open("player.txt");
    for(int i=0;i<5;i++)
    {
        getline(in.n);
        in >> id;
        p[i].id;
        in >> name;
        p[i].name;
        in >> score;
        p[i].score;
    }
    in.close();

    for(int i=0;i<5;i++)
    {
        if (p[i].score <= 500)
        cout << "ID   " << p[i].id << endl;
        cout << "Name " << p[i].name << endl;
        cout << "Score" << p[i].score << endl;
    }

    return 0;
}