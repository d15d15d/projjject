//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <Grids.hpp>
#include <ValEdit.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
    TButton *Button1;
    TButton *Button2;
    TButton *beginnerButton;
    TButton *amateurButton;
    TButton *customButton;
    TButton *professionalButton;
    TButton *cancelSelection;
    TMainMenu *MainMenu1;
    TMenuItem *New1;
    TMenuItem *New2;
    TMenuItem *N1;
    TMenuItem *Exit1;
    TMenuItem *About1;
    TMenuItem *Help1;
    TImage *Image1;
    TEdit *MZnach;
    TEdit *NZnach;
    TEdit *MinesZnach;
    TLabel *Label1;
    TButton *startCustomButton;
    TTimer *Timer1;
    TValueListEditor *ValueListEditor1;
    TPanel *Panel1;
    TEdit *Edit1;
    TLabel *Label2;
    TButton *Button3;
    TPanel *Panel2;
    TButton *menuButton;
    TButton *topButton;
    TPanel *Panel3;
    TLabel *Label3;
    TPanel *Panel4;
    TPanel *Panel5;
    void __fastcall Button2Click(TObject *Sender);
    void __fastcall cancelSelectionClick(TObject *Sender);
    void __fastcall beginnerButtonClick(TObject *Sender);
    void __fastcall amateurButtonClick(TObject *Sender);
    void __fastcall professionalButtonClick(TObject *Sender);
    void __fastcall New2Click(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall Image1MouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
    void __fastcall Exit1Click(TObject *Sender);
    void __fastcall customButtonClick(TObject *Sender);
    void __fastcall startCustomButtonClick(TObject *Sender);
    void __fastcall Button3Click(TObject *Sender);
    void __fastcall menuButtonClick(TObject *Sender);
    void __fastcall topButtonClick(TObject *Sender);
    void __fastcall About1Click(TObject *Sender);
private:	// User declarations
public:		
    __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
