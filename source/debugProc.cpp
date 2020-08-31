//==================================================================================================================
//
// デバッグ表示[debugProc.cpp]
// Author : Seiya Takahashi
//
//==================================================================================================================
#ifdef _DEBUG

#include "debugProc.h"
#include "renderer.h"
#include "manager.h"


//==================================================================================================================
// マクロ定義
//==================================================================================================================
#define CHARACTER_HEIGHT 20			// 文字の高さ
#define CHARACTER_WIDTH 20			// 文字の幅
#define CHARACTER_LINE_WEIGHT 20	// 文字の太さ

//==================================================================================================================
// 静的メンバ変数の初期化
//==================================================================================================================
LPD3DXFONT CDebugProc::m_pFont = NULL;					// フォントの情報
char CDebugProc::m_aStr[MAX_CHARACTER] = {};			// 文字数

//==================================================================================================================
// コンストラクタ
//==================================================================================================================
CDebugProc::CDebugProc()
{

}

//==================================================================================================================
// デストラクタ
//==================================================================================================================
CDebugProc::~CDebugProc()
{

}

//==================================================================================================================
// 初期化処理
//==================================================================================================================
void CDebugProc::Init(void)
{
	CRenderer *pRenderer = CManager::GetRenderer();				// レンダラー情報取得
	LPDIRECT3DDEVICE9 pDevice = pRenderer->GetDevice();			// デバイスの取得

	// デバッグ表示用フォント
	D3DXCreateFont(pDevice,
		CHARACTER_HEIGHT,										// 文字の高さ
		CHARACTER_WIDTH,										// 文字の幅
		CHARACTER_LINE_WEIGHT,									// 文字の太さ
		0,														// ミップマップレベルの数
		false,													// 文字を斜体にするかどうか
		SHIFTJIS_CHARSET,										// フォントの文字セット
		OUT_DEFAULT_PRECIS,
		DEFAULT_QUALITY,
		DEFAULT_PITCH,
		"游明朝",												// フォントの名前
		&m_pFont);

}

//==================================================================================================================
// 終了処理
//==================================================================================================================
void CDebugProc::Uninit(void)
{
	// フォントがNULLじゃないとき
	if (m_pFont != NULL)
	{
		m_pFont->Release();		// フォントの開放
		m_pFont = NULL;			// ポインタNULL
	}
}

//==================================================================================================================
// デバッグ表示
//==================================================================================================================
void CDebugProc::Print(char * fmt, ...)
{

	va_list list;					// 定義するだけで値は設定しない
	int nCount;
	char * cp;
	int nLengh = (int)strlen(m_aStr);	// 文字の個数を数える
	int nFmtLengh = (int)strlen(fmt);	
	if ((nLengh + nFmtLengh) > MAX_CHARACTER)
	{
		cout << "超えた\n";
		return;
	}
	// �@可変引数にアクセスする前の初期処理
	// 第２引数に指定するargcは、vararg_func引数"..."の直ぐ左側でなければならない
	va_start(list, fmt);

	// cpの文字列の長さが引数個数を意味し文字列の各文字がデータ型を意味する
	for (cp = (char *)fmt, nCount = 0; *cp != '\0'; cp++, nCount++)
	{
		vsprintf(&m_aStr[nLengh], fmt, list);
	}

	// �B可変引数にアクセスした後の終了処理
	va_end(list);
}

//==================================================================================================================
// 描画処理
//==================================================================================================================
void CDebugProc::Draw(void)
{
	RECT rect = { 0,0,SCREEN_WIDTH,SCREEN_HEIGHT };

	// テキストを描画
	m_pFont->DrawText(NULL,
		&m_aStr[0],
		-1,
		&rect,
		DT_LEFT,
		D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f));

	// 文字列の初期化
	m_aStr[0] = *"\0";
}

#endif

