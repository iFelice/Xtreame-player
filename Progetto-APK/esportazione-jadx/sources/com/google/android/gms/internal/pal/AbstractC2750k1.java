package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.LinkedList;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2750k1 implements InterfaceC2742j1 {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile A1 f23888t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MotionEvent f23889a;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public double f23898j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public double f23899k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public double f23900l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f23901m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f23902n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f23903o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f23904p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final DisplayMetrics f23907s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedList f23890b = new LinkedList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f23891c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f23892d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f23893e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f23894f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f23895g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f23896h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f23897i = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f23905q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f23906r = false;

    public AbstractC2750k1(Context context) {
        try {
            if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23939p)).booleanValue()) {
                AbstractC2710f1.b();
            } else {
                AbstractC2864y4.r(f23888t);
            }
            this.f23907s = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    public abstract long a(StackTraceElement[] stackTraceElementArr);

    public abstract L4 b(Context context, View view, Activity activity);

    public abstract L4 c(Context context, F2 f8);

    public abstract L4 d(Context context, View view, Activity activity);

    public abstract B1 e(MotionEvent motionEvent);

    /* JADX WARN: Code duplicated, block: B:48:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b1  */
    public final String f(Context context, String str, int i8, View view, Activity activity, byte[] bArr) {
        F2 f2N;
        String str2;
        C2734i1 c2734i1;
        int i9;
        Exception exc;
        int i10;
        String strA;
        int i11;
        int i12;
        L4 l4C;
        int i13;
        int i14 = i8;
        L4 l4B = null;
        if (bArr == null || bArr.length <= 0) {
            f2N = null;
        } else {
            try {
                f2N = F2.n(bArr, C2851x.a());
            } catch (L unused) {
                f2N = null;
            } catch (NullPointerException unused2) {
                return Integer.toString(3);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        C0325y c0325y = AbstractC2759l2.f23929f;
        C2727h2 c2727h2 = C2727h2.f23833d;
        boolean zBooleanValue = ((Boolean) c2727h2.f23836c.a(c0325y)).booleanValue();
        if (zBooleanValue) {
            c2734i1 = f23888t != null ? f23888t.f23436l : null;
            str2 = true != ((Boolean) c2727h2.f23836c.a(AbstractC2759l2.f23939p)).booleanValue() ? "te" : "be";
        } else {
            str2 = null;
            c2734i1 = null;
        }
        try {
            if (i14 == 3) {
                l4B = b(context, view, activity);
                try {
                    this.f23905q = true;
                    i13 = 1002;
                } catch (Exception e8) {
                    exc = e8;
                    i9 = 2;
                    if (zBooleanValue && c2734i1 != null) {
                        if (i14 == 3) {
                            i10 = 1003;
                        } else if (i14 == i9) {
                            i10 = 1009;
                        } else {
                            i14 = 1;
                            i10 = WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY;
                        }
                        c2734i1.a(i10, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, exc);
                    }
                }
            } else {
                if (i14 == 2) {
                    l4C = d(context, view, activity);
                    i13 = 1008;
                } else {
                    l4C = c(context, f2N);
                    i13 = 1000;
                }
                l4B = l4C;
            }
            if (!zBooleanValue || c2734i1 == null) {
                i9 = 2;
            } else {
                i9 = 2;
                try {
                    c2734i1.a(i13, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
                } catch (Exception e9) {
                    e = e9;
                    exc = e;
                    if (zBooleanValue) {
                        if (i14 == 3) {
                            i10 = 1003;
                        } else if (i14 == i9) {
                            i10 = 1009;
                        } else {
                            i14 = 1;
                            i10 = WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY;
                        }
                        c2734i1.a(i10, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, exc);
                    }
                }
            }
        } catch (Exception e10) {
            e = e10;
            i9 = 2;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (l4B != null) {
            try {
                if (((C2765m0) l4B.d()).c() == 0) {
                    strA = Integer.toString(5);
                } else {
                    strA = AbstractC2710f1.a((C2765m0) l4B.d(), str);
                    if (zBooleanValue && c2734i1 != null) {
                        if (i14 == 3) {
                            i11 = 1006;
                        } else {
                            i11 = i14 == i9 ? 1010 : 1004;
                        }
                        c2734i1.a(i11, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, null);
                    }
                }
            } catch (Exception e11) {
                strA = Integer.toString(7);
                if (zBooleanValue && c2734i1 != null) {
                    if (i14 == 3) {
                        i12 = 1007;
                    } else {
                        i12 = i14 == i9 ? 1011 : WebSocketProtocol.CLOSE_NO_STATUS_CODE;
                    }
                    c2734i1.a(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, e11);
                }
            }
        } else {
            strA = Integer.toString(5);
        }
        return strA;
    }
}
