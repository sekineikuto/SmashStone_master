//==================================================================================================================
//
// レンダラー[renderer.h]
// Author : Seiya Takahashi
//
//==================================================================================================================
#ifndef _RENDERER_H_
#define _RENDERER_H_

//==================================================================================================================
// インクルードファイル
//==================================================================================================================
#include "main.h"
#include "manager.h"

//==================================================================================================================
// 前方宣言
//==================================================================================================================
class CFade;
class CDebugProc;
class CCamera;
class CLight;
class CGame;
class CTitle;
class CResult;
class CRanking;
class CTutorial;
class CRecord;
class CSound;
class CMapSelect;

//==================================================================================================================
//
// レンダラークラスの定義
//
//==================================================================================================================
class CRenderer
{
public:
	// ==========================================================
	// 画面モードの種類
	// ==========================================================
	typedef enum
	{
		MODE_NONE = -1,
		MODE_TITLE,				// タイトル
		MODE_TUTORIAL,			// チュートリアル
		MODE_MAPSELECT,			// ステージ選択
		MODE_GAME,				// ゲーム
		MODE_RESULT,			// リザルト
		MODE_MAX				// 最大数
	} MODE;						// モード

	CRenderer();											// コンストラクタ
	~CRenderer();											// デストラクタ
	HRESULT Init(HWND hWnd, BOOL bWindow);					// 初期化処理
	void Uninit(void);										// 終了処理
	void Update(void);										// 更新処理
	void Draw(void);										// 描画処理

	static void SetMode(MODE mode);							// モードの設定
	static MODE GetMode(void);								// モードの取得
	static CGame *GetGame(void);							// ゲームの取得
	static CSound *GetSound(void);							// 音の取得
	static CFade *GetFade(void) { return m_pFade; }			// フェードの取得
	LPDIRECT3DDEVICE9 GetDevice(void);						// デバイス取得関数

#ifdef _DEBUG
	static bool GetbDisColl(void) { return m_bDisColl; }	// 当たり判定の可視化フラグを取得
	static bool GetbDisplay(void) { return m_bDisplay; }	// デバッグテキスト表示フラグの取得

	static void SetbDisColl(bool bDisplay) { m_bDisColl = bDisplay; }	// 当たり判定可視化の設定
	static void SetbDisplay(bool bDisplay) { m_bDisplay = bDisplay; }	// デバッグテキスト表示の設定

	void CleanupDeviceD3D();							// デバイスのクリーンアップ
#endif

protected:

private:
	void DebugCommand(void);							// デバッグコマンド

	static CFade *m_pFade;								// フェードの情報ポインタ
	static CDebugProc *m_pDebugProc;					// デバッグログの情報ポインタ
	static CCamera *m_pCamera;							// カメラの情報ポインタ
	static CLight *m_pLight;							// ライトの情報ポインタ
	static CTitle *m_pTitle;							// タイトル情報のポインタ
	static CGame *m_pGame;								// ゲーム情報のポインタ
	static CResult *m_pResult;							// リザルト情報のポインタ
	static CTutorial *m_pTutorial;						// チュートリアル情報のポインタ
	static MODE m_mode;									// モード情報のポインタ
	static CSound *m_pSound;							// 音情報のポインタ
	static CMapSelect *m_pMapSelect;					// マップ選択画面の情報ポインタ

	LPDIRECT3DDEVICE9 m_pD3DDevice = NULL;
	LPDIRECT3D9 m_pD3D = NULL;
	LPD3DXFONT	m_pFont = NULL;							// フォントへのポインタ
	CRecord *m_pRecord;									// 記録の情報ポインタ

	int			m_nCountFPS = 0;						// FPSカウンタ

	void StartMode();									// 選択モードの開始

#ifdef _DEBUG
	void InitImGui(D3DPRESENT_PARAMETERS d3dpp, HWND hWnd);	// ImGuiの初期化
	void UpdateImGui(void);									// ImGuiの更新
	void DrawImGui(void);									// ImGuiの描画
	void ResetDevice();										// デバイスのリセット

	D3DPRESENT_PARAMETERS	m_d3dpp;					// ImGuiに必要
	int						m_nCntWire;					// ワイヤーフレームを連続入力しないためのカウンタ
	bool					m_bWire;					// ワイヤーフレーム
	static bool				m_bDisplay;					// デバッグ表示させるかどうか
	static bool				m_bDisColl;					// 当たり判定を可視化するか
#endif

};
#endif