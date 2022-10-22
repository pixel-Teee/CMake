#pragma once

#if defined(WIN32)
#if defined EXPORT_DLL
#define CALCAPI __declspec(dllexport)
#elif defined IMPORT_DLL
#define CALCAPI __declspec(dllimport)
#else
#define CALCAPI
#endif
#else
#define CALCAPI
#endif

namespace Calc {
	CALCAPI int Sum(int a, int b); // sum declare

	CALCAPI int Multiply(int a, int b); // multiply declare
} // namespace Calc