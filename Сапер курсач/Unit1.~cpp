//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <iostream.h>
#include "Mas.h"
#include "Unit1.h"
#include "time.h"
#include <ctime>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

int Mas::flag[33][33];
int Mas::mines[33][33];
int Mas::numbers[33][33];
int Mas::field[6]; //0-m,1-n,2-текущее число открытых клеток без мин, 3 - число мин, 4,5 - для таймера
int Mas::m;
int Mas::n;



void __fastcall number1(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x,y-10);
     Form1->Image1->Canvas->LineTo(x,y+10);
}
void __fastcall number2(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x+5,y);
     Form1->Image1->Canvas->LineTo(x-5,y+10);
     Form1->Image1->Canvas->LineTo(x+5,y+10);


}
void __fastcall number3(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y);
     Form1->Image1->Canvas->LineTo(x+5,y);
     Form1->Image1->Canvas->LineTo(x-5,y+10);

}
void __fastcall number4(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y);
     Form1->Image1->Canvas->LineTo(x+5,y);
     Form1->Image1->Canvas->MoveTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x+5,y+10);

}
void __fastcall number5(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y);
     Form1->Image1->Canvas->LineTo(x+5,y);
     Form1->Image1->Canvas->LineTo(x+5,y+10);
     Form1->Image1->Canvas->LineTo(x-6,y+10);

}
void __fastcall number6(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y+10);
     Form1->Image1->Canvas->LineTo(x+5,y+10);
     Form1->Image1->Canvas->LineTo(x+5,y);
     Form1->Image1->Canvas->LineTo(x-5,y);

}
void __fastcall number7(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y+10);

}
void __fastcall number8(int x1,int y1)
{
     int x = 15 + 32*x1;
     int y = 15 + 32*y1;
     Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
     Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
     Form1->Image1->Canvas->MoveTo(x+5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y-10);
     Form1->Image1->Canvas->LineTo(x-5,y+10);
     Form1->Image1->Canvas->LineTo(x+5,y+10);
     Form1->Image1->Canvas->LineTo(x+5,y-10);
     Form1->Image1->Canvas->MoveTo(x-5,y);
     Form1->Image1->Canvas->LineTo(x+5,y);

}


void __fastcall ClearMasMines()
{
    for (int j = 0; j < 32; j++) {
        for (int i = 0; i < 32; i++) {
            Mas::flag[i][j] = 0;
            Mas::mines[i][j] = 0;
            Mas::numbers[i][j] = 0;
        }
    }
}
void __fastcall ClearMasField()
{
    for (int j = 0; j < 6; j++) {
        Mas::field[j] = 0;
    }
}

void _fastcall ShowMasFlags()
{
    FILE *f;
    f = fopen("flags.txt","w");
    for (int j = 0; j < 32; j++) {
        for (int i = 0; i < 32; i++) {
            fprintf(f, "%d ", Mas::flag[i][j]);
        }
        fprintf(f, "\n");
    }
    fclose(f);
}

void _fastcall ShowMasMines()
{
    FILE *f;
    f = fopen("mines.txt","w");
    for (int j = 0; j < 32; j++) {
        for (int i = 0; i < 32; i++) {
            fprintf(f, "%d ", Mas::mines[i][j]);
        }
        fprintf(f, "\n");
    }
    fclose(f);
}

void _fastcall ShowMasNumbers()
{
    FILE *f;
    f = fopen("numbers.txt","w");
    for (int j = 0; j < 32; j++) {
        for (int i = 0; i < 32; i++) {
            fprintf(f, "%d ", Mas::numbers[i][j]);
        }
        fprintf(f, "\n");
    }
    fclose(f);
}
void _fastcall ShowMasField()
{
    FILE *f;
    f = fopen("field.txt","w");
    for (int j = 0; j < 6; j++) {
        fprintf(f, "%d ", Mas::field[j]);
    }
    fprintf(f, "\n");
    fclose(f);
}

void __fastcall fillNumbersAroundMines(int countx, int county)
{

    for (int j = 0; j < county; j++) {         //countx - столбцы, county - cтроки
        for (int i = 0; i < countx; i++) {
            if (Mas::mines[i][j] != 9)
            {
                if ((i == 0)&&(j == 0))
                {
                    Mas::numbers[0][0] = (Mas::mines[1][0] + Mas::mines[1][1] + Mas::mines[0][1])/9;                                                          // левый верхний угол
                }
                if ((i == countx-1)&&(j == county-1))
                {
                    Mas::numbers[countx-1][county-1] = (Mas::mines[countx-2][county-1] + Mas::mines[countx-2][county-2] + Mas::mines[countx-1][county-2])/9;  //правый нижний угол
                }
                if ((i == countx-1)&&(j == 0))
                {
                    Mas::numbers[countx-1][0] = (Mas::mines[countx-1][1] + Mas::mines[countx-2][1] + Mas::mines[countx-2][0])/9;                   //правый верхний угол
                }
                if ((i == 0)&&(j == county-1))
                {
                    Mas::numbers[0][county-1] = (Mas::mines[1][county-1] + Mas::mines[1][county-2] + Mas::mines[0][county-2])/9;                   //левый нижний угол
                }
                if ((i > 0)&&(i < countx-1)&&(j == 0))
                {
                    Mas::numbers[i][j] = (Mas::mines[i-1][0] + Mas::mines[i-1][1] + Mas::mines[i][1] + Mas::mines[i+1][1] + Mas::mines[i+1][0])/9; //верхняя строчка
                }
                if ((i > 0)&&(i < countx-1)&&(j == county-1))
                {
                    Mas::numbers[i][j] = (Mas::mines[i-1][county-1] + Mas::mines[i-1][county-2] + Mas::mines[i][county-2] + Mas::mines[i+1][county-2] + Mas::mines[i+1][county-1])/9; //нижняя строчка
                }
                if ((j > 0)&&(j < county-1)&&(i == 0))
                {
                    Mas::numbers[i][j] = (Mas::mines[0][j-1] + Mas::mines[1][j-1] + Mas::mines[1][j] + Mas::mines[1][j+1] + Mas::mines[0][j+1])/9; //левая строчка
                }
                if ((j > 0)&&(j < county-1)&&(i == countx-1))
                {
                    Mas::numbers[i][j] = (Mas::mines[countx-1][j-1] + Mas::mines[countx-2][j-1] + Mas::mines[countx-2][j] + Mas::mines[countx-2][j+1] + Mas::mines[countx-1][j+1])/9; //правая строчка
                }
                if ((j > 0)&&(j < county-1)&&(i > 0)&&(i < countx-1))
                {
                    Mas::numbers[i][j] = (Mas::mines[i-1][j-1] + Mas::mines[i][j-1] + Mas::mines[i+1][j-1] + Mas::mines[i-1][j] + Mas::mines[i+1][j] + Mas::mines[i-1][j+1] + Mas::mines[i][j+1] + Mas::mines[i+1][j+1])/9; // квадрат внутри
                }
            }
        }
    }
    ShowMasNumbers();
}

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
    ClearMasMines();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)
{
    this->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::cancelSelectionClick(TObject *Sender)
{

    Button1->Visible = true;
    Button2->Visible = true;
    topButton->Visible = true;
    Panel4->Visible = false;
    beginnerButton->Visible = false;
    amateurButton->Visible = false;
    professionalButton->Visible = false;
    customButton->Visible = false;
    cancelSelection->Visible = false;
    Panel5->Visible = true;
}

void __fastcall fillMines (int countx, int county, int countMines)
{
    srand((unsigned)time(0));
    int count = 0;
    int i = 0;
    int j = 0;
    int p;
    while (count != countMines)
    {
        p = rand() % 101;
        if ((p < 5) && (Mas::mines[i][j] != 9))
        {
            Mas::mines[i][j] = 9;
            count=count+1;
        }

        if (i < countx-1)
        {
            i=i+1;
        }
        else
        {
            if (j < county-1)
            {
                j=j+1;
            } else
            {
                j = 0;
            }
            i = 0;
        }
    }
    ShowMasMines();
}

void __fastcall createLand(int countx, int county, int radius)
{
    ClearMasField();
    ShowMasField();
    Form1->Image1->Visible = true;
    Form1->Image1->Canvas->Brush->Color = clWhite;
    int dx = radius;   //15
    int dy = radius;
    for (int x=dx;x<=dx+(radius*2+2)*(countx - 1);x+=radius*2+2)
    {
        for (int y=dy;y<=dy+(radius*2+2)*(county - 1);y+=radius*2+2)
        {
            Form1->Image1->Canvas->Rectangle(x+radius,y+radius,x-radius,y-radius);
        }
    }
    Form1->ClientHeight = county*32-1;
    Form1->ClientWidth  = countx*32-1;
    Form1->beginnerButton->Visible = false;
    Form1->amateurButton->Visible = false;
    Form1->professionalButton->Visible = false;
    Form1->customButton->Visible = false;
    Form1->cancelSelection->Visible = false;
    Form1->Label1->Visible = false;
    Form1->MZnach->Visible = false;
    Form1->NZnach->Visible = false;
    Form1->MinesZnach->Visible = false;
    Form1->startCustomButton->Visible = false;
    Form1->Panel3->Visible = false;
    Form1->Panel4->Visible = false;
    Form1->Label3->Visible = false;
    Form1->Panel5->Visible = false;
}

void __fastcall openK (int x1, int y1,int m,int n)     //x1,y1 Nomer kletki
{
    if ((x1>=0)&&(y1>=0)&&(x1<m)&&(y1<n))
    {
        if (Mas::numbers[x1][y1] == 0)
        {
            Mas::numbers[x1][y1] = 10;
            Mas::field[2]+=10;
            int x = 15 + 32*x1;
            int y = 15 + 32*y1;
            Form1->Image1->Canvas->Brush->Color = clMoneyGreen;
            Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
            for (int i = -1; i<=1 ;i++){
                for (int j = -1; j<=1 ; j++)
                {
                    openK(x1+i,y1+j,m,n);
                }
            }
        }
        if ((Mas::numbers[x1][y1]>0)&& (Mas::numbers[x1][y1]<10 ) )
        {
            if (Mas::numbers[x1][y1] == 1)
            {
                number1(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 2)
            {
                number2(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 3)
            {
                number3(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 4)
            {
                number4(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 5)
            {
                number5(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 6)
            {
                number6(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 7)
            {
                number7(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 8)
            {
                number8(x1,y1);
            }
            Mas::numbers[x1][y1]=10;
            Mas::field[2]+=10;
        }

    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::beginnerButtonClick(TObject *Sender)
{
    ClearMasMines();
    createLand(9, 9, 15);
    fillMines(9,9,10);
    fillNumbersAroundMines(9,9);
    Mas::field[0]=9;
    Mas::field[1]=9;
    Mas::field[3]=10;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::amateurButtonClick(TObject *Sender)
{
    ClearMasMines();
    createLand(16, 16, 15);
    fillMines(16,16,40);
    fillNumbersAroundMines(16,16);
    Mas::field[0]=16;
    Mas::field[1]=16;
    Mas::field[3]=40;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::professionalButtonClick(TObject *Sender)
{
    ClearMasMines();
    createLand(32, 16, 15);
    fillMines(32,16,99);
    fillNumbersAroundMines(32,16);
    Mas::field[0]=32;
    Mas::field[1]=16;
    Mas::field[3]=99;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::customButtonClick(TObject *Sender)
{
    Label1->Visible = true;
    MZnach->Visible = true;
    NZnach->Visible = true;
    MZnach->Clear();
    NZnach->Clear();
    MinesZnach->Clear();
    MinesZnach->Visible = true;
    Label3->Visible = true;
    Panel3->Visible = true;
    startCustomButton->Visible = true;
    beginnerButton->Visible = false;
    amateurButton->Visible = false;
    professionalButton->Visible = false;
    Panel4->Visible = false;
    customButton->Visible = false;
    cancelSelection->Visible = false;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::startCustomButtonClick(TObject *Sender)
{
    ClearMasMines();
    ShowMasField();
    int m,n,mines;
    m = atoi((MZnach->Text).c_str());
    n = atoi((NZnach->Text).c_str());
    mines = atoi((MinesZnach->Text).c_str());
    if ((m > 32) || (n > 18) || (mines > (m * n) ) || (m < 5))
    {
        ShowMessage("Недопустимые значения!");
        this->customButtonClick(Sender);
    }
    else
    {
        createLand(m, n, 15);
        fillMines(m,n,mines);
        fillNumbersAroundMines(32,16);
        Mas::field[0]=m;
        Mas::field[1]=n;
        Mas::field[3]=mines;
    }


}
//---------------------------------------------------------------------------

void __fastcall TForm1::New2Click(TObject *Sender)
{
    ClearMasMines();
    ShowMasNumbers();
    ShowMasField();
    Form1->Image1->Visible = false;
    ShowMasFlags();
    Form1->ClientHeight = 600;
    Form1->ClientWidth = 1200;
    Button1->Visible = true;
    Button2->Visible = true;
    beginnerButton->Visible = false;
    amateurButton->Visible = false;
    professionalButton->Visible = false;
    customButton->Visible = false;
    cancelSelection->Visible = false;
    Label1->Visible = false;
    MZnach->Visible = false;
    NZnach->Visible = false;
    MinesZnach->Visible = false;
    startCustomButton->Visible = false;
    Form1->Image1->Canvas->Brush->Color = clWhite;
    MZnach->Clear();
    NZnach->Clear();
    MinesZnach->Clear();
    Panel1->Visible = false;
    Label2->Visible = false;
    Edit1->Visible = false;
    ValueListEditor1->Visible = false;
    Button3->Visible = false;
    Edit1->Clear();
    Timer1->Enabled = false;
    Panel2->Visible = false;
    menuButton->Visible = false;
    topButton->Visible = true;
    Label3->Visible = false;
    Panel3->Visible = false;
    Panel4->Visible = false;
    Panel5->Visible = true;
}

//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
    Button1->Visible = false;
    Button2->Visible = false;
    topButton->Visible = false;
    Panel5->Visible = false;
    beginnerButton->Visible = true;
    amateurButton->Visible = true;
    professionalButton->Visible = true;
    customButton->Visible = true;
    cancelSelection->Visible = true;
    Panel4->Visible = true;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
    Panel1->Visible = false;
    Label2->Visible = false;
    Edit1->Visible = false;
    Panel2->Visible = true;
    ValueListEditor1->Visible = true;
    menuButton->Visible = true;
    Button3->Visible = false;
    int result = (Mas::field[5]-Mas::field[4]);
    AnsiString s;
    s.sprintf("%d", result);
    AnsiString Name = Edit1->Text;
    this->ValueListEditor1->Values[Name] = result;
    ValueListEditor1->Strings->SaveToFile("result.txt");

}

void __fastcall TForm1::topButtonClick(TObject *Sender)
{
    Panel5->Visible = false;
    Button1->Visible = false;
    Button2->Visible = false;
    topButton->Visible = false;
    Panel2->Visible = true;
    ValueListEditor1->Visible = true;
    menuButton->Visible = true;
    if (FileExists("result.txt"))
    {
        ValueListEditor1->Strings->LoadFromFile("result.txt");
    }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::menuButtonClick(TObject *Sender)
{
    this->New2Click(Sender);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Image1MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
    if ((Button == mbRight)  && (Mas::numbers[X/32][Y/32]<10))
    {
        if (Mas::flag[X/32][Y/32] == 0)
        {
            int x = 15 + 32*(X / 32);
            int y = 15 + 32*(Y / 32);
            Mas::flag[X/32][Y/32] = 1;
            Form1->Image1->Canvas->Brush->Color = clRed;
            Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
            ShowMasFlags();
        } else
        {
            int x = 15 + 32*(X / 32);
            int y = 15 + 32*(Y / 32);
            Mas::flag[X/32][Y/32] = 0;
            Form1->Image1->Canvas->Brush->Color = clWhite;
            Form1->Image1->Canvas->Rectangle(x+15,y+15,x-15,y-15);
            ShowMasFlags();
        }

    } else if (Button == mbLeft)
    {
        if (Timer1->Enabled == false)
        {
            Timer1->Enabled = true;
            Mas::field[4] = GetTickCount()/1000;
        }

        if ((Mas::mines[X/32][Y/32] == 9)&&(Mas::flag[X/32][Y/32]==0))
        {
            int x = 15 + 32*(X / 32);
            int y = 15 + 32*(Y / 32);
            Form1->Image1->Canvas->Brush->Color = clFuchsia	;
            Form1->Image1->Canvas->Rectangle(x+14,y+14,x-14,y-14);
            ShowMessage("Game Over");
            this->New2Click(Sender);
        }
        if ((Mas::numbers[X/32][Y/32] > 0)&&(Mas::flag[X/32][Y/32]==0)&& (Mas::numbers[X/32][Y/32]<10))
        {
            int x1 = X/32; int y1 = Y/32;
            if (Mas::numbers[x1][y1] == 1)
            {
                number1(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 2)
            {
                number2(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 3)
            {
                number3(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 4)
            {
                number4(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 5)
            {
                number5(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 6)
            {
                number6(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 7)
            {
                number7(x1,y1);
            }
            if (Mas::numbers[x1][y1] == 8)
            {
                number8(x1,y1);
            }
            Mas::numbers[x1][y1]=10;
            Mas::field[2]+=10;

        }
        if ((Mas::numbers[X/32][Y/32] == 0)&&(Mas::flag[X/32][Y/32]==0))
        {

            Mas::mines[X/32][Y/32]=1;
            openK(X/32, Y/32,Mas::field[0],Mas::field[1]);

        }
        ShowMasNumbers();
        ShowMasField();
        if (Mas::field[2]==((Mas::field[0]*Mas::field[1]*10)-(Mas::field[3]*10)))
        {
            Timer1->Enabled = false;
            Mas::field[5] = GetTickCount()/1000;
            ShowMessage("Win!");
            this->New2Click(Sender);
            ShowMasField();
            Panel5->Visible = false;
            Button1->Visible = false;
            Button2->Visible = false;
            topButton->Visible = false;
            Panel1->Visible = true;
            Label2->Visible = true;
            Edit1->Visible = true;
            Button3->Visible = true;
        }
    }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Exit1Click(TObject *Sender)
{
    this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::About1Click(TObject *Sender)
{
    ShowMessage("Ширяева Дарья");
}
//---------------------------------------------------------------------------


