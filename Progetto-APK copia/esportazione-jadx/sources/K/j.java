package K;

import J6.r;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Trace;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p132r.l f4289a = new p132r.l(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f4290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f4291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p132r.m f4292d;

    static {
        n nVar = new n();
        nVar.f4302G = "fonts-androidx";
        nVar.f4303H = 10;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), nVar);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f4290b = threadPoolExecutor;
        f4291c = new Object();
        f4292d = new p132r.m(0);
    }

    public static String a(int i8, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i9 = 0; i9 < list.size(); i9++) {
            sb.append(((f) list.get(i9)).f4279e);
            sb.append("-");
            sb.append(i8);
            if (i9 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public static i b(String str, Context context, List list, int i8) {
        int i9;
        Typeface typefaceH;
        r.b("getFontSync");
        p132r.l lVar = f4289a;
        try {
            Typeface typeface = (Typeface) lVar.b(str);
            if (typeface != null) {
                i iVar = new i(typeface);
                Trace.endSection();
                return iVar;
            }
            try {
                k kVarA = e.a(context, list);
                int i10 = kVarA.f4294H;
                if (i10 == 0) {
                    l[] lVarArr = (l[]) ((List) kVarA.f4295I).get(0);
                    if (lVarArr == null || lVarArr.length == 0) {
                        i9 = 1;
                    } else {
                        int length = lVarArr.length;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= length) {
                                i9 = 0;
                                break;
                            }
                            int i12 = lVarArr[i11].f4300e;
                            if (i12 != 0) {
                                if (i12 >= 0) {
                                    i9 = i12;
                                    break;
                                }
                                i9 = -3;
                                break;
                            }
                            i11++;
                        }
                    }
                } else {
                    if (i10 != 1) {
                        i9 = -3;
                        break;
                    }
                    i9 = -2;
                }
                if (i9 != 0) {
                    i iVar2 = new i(i9);
                    Trace.endSection();
                    return iVar2;
                }
                if (((List) kVarA.f4295I).size() <= 1 || Build.VERSION.SDK_INT < 29) {
                    l[] lVarArr2 = (l[]) ((List) kVarA.f4295I).get(0);
                    S s7 = G.e.f3283a;
                    r.b("TypefaceCompat.createFromFontInfo");
                    try {
                        typefaceH = G.e.f3283a.H(context, lVarArr2, i8);
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } else {
                    List list2 = (List) kVarA.f4295I;
                    S s8 = G.e.f3283a;
                    r.b("TypefaceCompat.createFromFontInfoWithFallback");
                    try {
                        typefaceH = G.e.f3283a.I(context, list2, i8);
                        Trace.endSection();
                    } catch (Throwable th2) {
                        Trace.endSection();
                        throw th2;
                    }
                }
                if (typefaceH == null) {
                    i iVar3 = new i(-3);
                    Trace.endSection();
                    return iVar3;
                }
                lVar.d(str, typefaceH);
                i iVar4 = new i(typefaceH);
                Trace.endSection();
                return iVar4;
            } catch (PackageManager.NameNotFoundException unused) {
                i iVar5 = new i(-1);
                Trace.endSection();
                return iVar5;
            }
        } catch (Throwable th3) {
            Trace.endSection();
            throw th3;
        }
    }
}
