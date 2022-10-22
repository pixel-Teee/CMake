#pragma once

#ifdef WIN32
#ifdef BUILD_DLL
#define CALCAPI __declspec(dllexport)
#else
#define CALCAPI __declspec(dllimport)
#endif
#else
#define CALCAPI
#endif

namespace Calc {
CALCAPI int Sum(int a, int b); // sum declare

CALCAPI int Multiply(int a, int b); // multiply declare
} // namespace Calc