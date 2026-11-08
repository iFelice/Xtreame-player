package A0;

import Y.AbstractComponentCallbacksC0406s;
import android.app.AlertDialog;
import android.graphics.drawable.ColorDrawable;
import android.opengl.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class O {
    public static String A(String str, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, String str2) {
        return str + abstractComponentCallbacksC0406s + str2;
    }

    public static String B(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String C(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static StringBuilder D(String str, int i8, String str2, int i9, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i8);
        sb.append(str2);
        sb.append(i9);
        sb.append(str3);
        return sb;
    }

    public static /* synthetic */ Iterator E() {
        try {
            return Arrays.asList(new K6.b()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static /* synthetic */ void F(int i8) {
        if (i8 == 0) {
            throw new NullPointerException("null reference");
        }
    }

    public static /* synthetic */ void G(T6.a aVar) {
        if (aVar != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void H(com.google.android.gms.common.api.c cVar) {
        if (cVar != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void I(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static void J(StringBuilder sb, int i8, String str, int i9, String str2) {
        sb.append(i8);
        sb.append(str);
        sb.append(i9);
        sb.append(str2);
    }

    public static /* synthetic */ void K(p185x6.h hVar) {
        if (hVar != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ Iterator L() {
        try {
            return Arrays.asList(new K6.a()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static void M(G0.l lVar, G0.l lVar2) {
        if (lVar == lVar2) {
            return;
        }
        if (lVar2 != null) {
            lVar2.d(null);
        }
        if (lVar != null) {
            lVar.c(null);
        }
    }

    public static /* synthetic */ String N(int i8) {
        if (i8 == 1) {
            return "IDLE";
        }
        if (i8 == 2) {
            return "QUEUING";
        }
        if (i8 != 3) {
            return i8 != 4 ? "null" : "RUNNING";
        }
        return "QUEUED";
    }

    public static /* synthetic */ String O(int i8) {
        if (i8 == 1) {
            return "OK";
        }
        if (i8 == 2) {
            return "TRANSIENT_ERROR";
        }
        if (i8 != 3) {
            return i8 != 4 ? "null" : "INVALID_PAYLOAD";
        }
        return "FATAL_ERROR";
    }

    public static /* synthetic */ String P(int i8) {
        if (i8 == 1) {
            return "NONE";
        }
        if (i8 != 2) {
            return i8 != 3 ? "null" : "REMOVING";
        }
        return "ADDING";
    }

    public static /* synthetic */ String Q(int i8) {
        if (i8 == 1) {
            return "REMOVED";
        }
        if (i8 == 2) {
            return "VISIBLE";
        }
        if (i8 != 3) {
            return i8 != 4 ? "null" : "INVISIBLE";
        }
        return "GONE";
    }

    public static float[] a(P p7, long j8) {
        float[] fArr = new float[9];
        p7.a().getValues(fArr);
        float[] fArr2 = new float[16];
        fArr2[10] = 1.0f;
        int i8 = 0;
        while (i8 < 3) {
            int i9 = 0;
            while (i9 < 3) {
                fArr2[((i8 == 2 ? 3 : i8) * 4) + (i9 == 2 ? 3 : i9)] = fArr[(i8 * 3) + i9];
                i9++;
            }
            i8++;
        }
        float[] fArr3 = new float[16];
        Matrix.transposeM(fArr3, 0, fArr2, 0);
        return fArr3;
    }

    public static void b(W0.L l4, p117p0.E e8, int i8) {
        l4.a(i8, 0, e8);
    }

    public static final void c(int i8, View view) {
        int iB = p156u.h.b(i8);
        if (iB == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iB == 1) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (iB == 2) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iB != 3) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static /* synthetic */ boolean d(int i8, int i9, int i10) {
        switch (i8) {
            case 1:
                return g(i8, i9, i10);
            case 2:
                return h(i8, i9, i10);
            case 3:
                return i(i8, i9, i10);
            case 4:
                return j(i8, i9, i10);
            case 5:
                return k(i8, i9, i10);
            case 6:
                return l(i8, i9, i10);
            case 7:
                return m(i8, i9, i10);
            default:
                return n(i8, i9, i10);
        }
    }

    public static int e(int i8) {
        if (i8 == 0) {
            return 2;
        }
        if (i8 == 4) {
            return 4;
        }
        if (i8 == 8) {
            return 3;
        }
        throw new IllegalArgumentException(p000a.r.f("Unknown visibility ", i8));
    }

    public static int f(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return e(view.getVisibility());
    }

    public static final boolean g(int i8, int i9, int i10) {
        return ((i9 + i10) & 1) == 0;
    }

    public static final boolean h(int i8, int i9, int i10) {
        return (i9 & 1) == 0;
    }

    public static final boolean i(int i8, int i9, int i10) {
        return i10 % 3 == 0;
    }

    public static final boolean j(int i8, int i9, int i10) {
        return (i9 + i10) % 3 == 0;
    }

    public static final boolean k(int i8, int i9, int i10) {
        return (((i10 / 3) + (i9 / 2)) & 1) == 0;
    }

    public static final boolean l(int i8, int i9, int i10) {
        return (i9 * i10) % 6 == 0;
    }

    public static final boolean m(int i8, int i9, int i10) {
        return (i9 * i10) % 6 < 3;
    }

    public static final boolean n(int i8, int i9, int i10) {
        return ((((i9 * i10) % 3) + (i9 + i10)) & 1) == 0;
    }

    public static int o(int i8, int i9, int i10, int i11) {
        return i8 | i9 | i10 | 128 | i11;
    }

    public static int p(int i8) {
        return i8 & 384;
    }

    public static int q(int i8) {
        return i8 & 64;
    }

    public static /* synthetic */ boolean r(int i8) {
        if (i8 == 1 || i8 == 2 || i8 == 3) {
            return false;
        }
        if (i8 == 4 || i8 == 5) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ int s(int i8) {
        if (i8 == 1) {
            return 0;
        }
        if (i8 == 2) {
            return 90;
        }
        throw null;
    }

    public static /* synthetic */ long t(int i8) {
        if (i8 == 1) {
            return 0L;
        }
        if (i8 == 2) {
            return 1L;
        }
        if (i8 == 3) {
            return 2L;
        }
        if (i8 == 4) {
            return 3L;
        }
        if (i8 == 5) {
            return 4L;
        }
        throw null;
    }

    public static boolean u(int i8, boolean z7) {
        int i9 = i8 & 7;
        return i9 == 4 || (z7 && i9 == 3);
    }

    public static int v(int i8, int i9, int i10, int i11) {
        return ((i8 * i9) / i10) + i11;
    }

    public static View w(Window window, ColorDrawable colorDrawable, AlertDialog alertDialog, View view, int i8) {
        window.setBackgroundDrawable(colorDrawable);
        alertDialog.setView(view);
        return view.findViewById(i8);
    }

    public static h7.i x(String str, String str2, c7.a aVar) {
        return aVar.f0(q0.q().c(str, str2));
    }

    public static String y(String str, int i8, String str2) {
        return str + i8 + str2;
    }

    public static String z(String str, long j8) {
        return str + j8;
    }
}
