// SubNumber.cpp : ���� DLL Ӧ�ó���ĵ���������
//

#include "stdafx.h"

#ifndef DLL_IMPLEMENT  
#define  DLL_API _declspec(dllexport)  
#else  
#define  DLL_API _declspec(dllimport)  
#endif

extern "C" DLL_API double SubNumber(const double numb1, const double numb2)
{
	return numb1 + numb2;
}