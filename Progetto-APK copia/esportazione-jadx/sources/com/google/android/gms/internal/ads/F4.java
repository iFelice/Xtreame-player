package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import okhttp3.internal.ws.WebSocketProtocol;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public abstract class F4 implements E4 {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static volatile V4 f13291a0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public MotionEvent f13292G;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public double f13301P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public double f13302Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public double f13303R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public float f13304S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public float f13305T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public float f13306U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public float f13307V;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final DisplayMetrics f13310Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final K4 f13311Z;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final LinkedList f13293H = new LinkedList();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f13294I = 0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f13295J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f13296K = 0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f13297L = 0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f13298M = 0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f13299N = 0;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f13300O = 0;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f13308W = false;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f13309X = false;

    public F4(Context context) {
        try {
            AbstractC2223x4.b();
            this.f13310Y = context.getResources().getDisplayMetrics();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue()) {
                this.f13311Z = new K4(14);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void b(StackTraceElement[] stackTraceElementArr) {
        K4 k8;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue() || (k8 = this.f13311Z) == null) {
            return;
        }
        k8.f14301H = new ArrayList(Arrays.asList(stackTraceElementArr));
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String c(Context context) {
        char[] cArr = X4.f17380a;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return l(context, null, 1, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String d(Context context, String str, View view, Activity activity) {
        return l(context, str, 3, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String e(Context context, String str, View view) {
        return l(context, str, 3, view, null);
    }

    public abstract long f(StackTraceElement[] stackTraceElementArr);

    public abstract V3 g(Context context, View view, Activity activity);

    public abstract V3 h(Context context);

    public abstract V3 i(Context context, View view, Activity activity);

    public abstract W4 j(MotionEvent motionEvent);

    public final void k() {
        this.f13298M = 0L;
        this.f13294I = 0L;
        this.f13295J = 0L;
        this.f13296K = 0L;
        this.f13297L = 0L;
        this.f13299N = 0L;
        this.f13300O = 0L;
        LinkedList linkedList = this.f13293H;
        if (linkedList.isEmpty()) {
            MotionEvent motionEvent = this.f13292G;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        } else {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            linkedList.clear();
        }
        this.f13292G = null;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c2 A[Catch: Exception -> 0x00fa, TryCatch #2 {Exception -> 0x00fa, blocks: (B:48:0x00b4, B:51:0x00c2, B:59:0x00ea, B:62:0x00fe), top: B:79:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:56:0x00df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00fe A[Catch: Exception -> 0x00fa, TRY_LEAVE, TryCatch #2 {Exception -> 0x00fa, blocks: (B:48:0x00b4, B:51:0x00c2, B:59:0x00ea, B:62:0x00fe), top: B:79:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final String l(Context context, String str, int i8, View view, Activity activity) {
        D4 d6;
        String str2;
        int i9;
        Exception exc;
        V3 v3H;
        int i10;
        int i11;
        long jCurrentTimeMillis;
        String strA;
        int i12;
        int i13;
        int i14;
        int i15 = i8;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15925r2)).booleanValue();
        if (zBooleanValue) {
            d6 = f13291a0 != null ? f13291a0.f16950l : null;
            str2 = "be";
        } else {
            d6 = null;
            str2 = null;
        }
        try {
            if (i15 == 3) {
                v3H = g(context, view, activity);
                try {
                    this.f13308W = true;
                    i14 = 1002;
                } catch (Exception e8) {
                    exc = e8;
                    i9 = 3;
                    if (zBooleanValue || d6 == null) {
                        i10 = 2;
                    } else {
                        if (i15 == i9) {
                            i10 = 2;
                            i11 = 1003;
                        } else {
                            i10 = 2;
                            if (i15 == 2) {
                                i11 = 1009;
                            } else {
                                i15 = 1;
                                i11 = WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY;
                            }
                        }
                        d6.a(i11, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, exc);
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (v3H != null) {
                        try {
                            if (((C1496j4) v3H.b()).a(null) == 0) {
                                strA = Integer.toString(5);
                            } else {
                                C1496j4 c1496j4 = (C1496j4) v3H.b();
                                boolean z7 = AbstractC2223x4.f21830a;
                                strA = AbstractC2223x4.a(c1496j4.d(), str);
                                if (zBooleanValue) {
                                    if (i15 == i9) {
                                        i12 = 1006;
                                    } else if (i15 == i10) {
                                        i12 = 1010;
                                    } else {
                                        i12 = 1004;
                                    }
                                    d6.a(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
                                }
                            }
                        } catch (Exception e9) {
                            strA = Integer.toString(7);
                            if (zBooleanValue && d6 != null) {
                                if (i15 == i9) {
                                    i13 = 1007;
                                } else {
                                    i13 = i15 == i10 ? 1011 : WebSocketProtocol.CLOSE_NO_STATUS_CODE;
                                }
                                d6.a(i13, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, e9);
                            }
                        }
                    } else {
                        strA = Integer.toString(5);
                    }
                    return strA;
                }
            } else if (i15 == 2) {
                v3H = i(context, view, activity);
                i14 = 1008;
            } else {
                v3H = h(context);
                i14 = 1000;
            }
            if (!zBooleanValue || d6 == null) {
                i9 = 3;
            } else {
                try {
                    i9 = 3;
                    try {
                        d6.a(i14, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, null);
                    } catch (Exception e10) {
                        e = e10;
                        exc = e;
                        if (zBooleanValue) {
                        }
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (v3H != null) {
                            strA = Integer.toString(5);
                        } else if (((C1496j4) v3H.b()).a(null) == 0) {
                            strA = Integer.toString(5);
                        } else {
                            C1496j4 c1496j5 = (C1496j4) v3H.b();
                            boolean z8 = AbstractC2223x4.f21830a;
                            strA = AbstractC2223x4.a(c1496j5.d(), str);
                            if (zBooleanValue) {
                                if (i15 == i9) {
                                    i12 = 1006;
                                } else if (i15 == i10) {
                                    i12 = 1010;
                                } else {
                                    i12 = 1004;
                                }
                                d6.a(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
                            }
                        }
                        return strA;
                    }
                } catch (Exception e11) {
                    e = e11;
                    i9 = 3;
                }
            }
        } catch (Exception e12) {
            i9 = 3;
            exc = e12;
            v3H = null;
        }
        i10 = 2;
        jCurrentTimeMillis = System.currentTimeMillis();
        if (v3H != null) {
            strA = Integer.toString(5);
        } else if (((C1496j4) v3H.b()).a(null) == 0) {
            strA = Integer.toString(5);
        } else {
            C1496j4 c1496j6 = (C1496j4) v3H.b();
            boolean z9 = AbstractC2223x4.f21830a;
            strA = AbstractC2223x4.a(c1496j6.d(), str);
            if (zBooleanValue && d6 != null) {
                if (i15 == i9) {
                    i12 = 1006;
                } else if (i15 == i10) {
                    i12 = 1010;
                } else {
                    i12 = 1004;
                }
                d6.a(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
            }
        }
        return strA;
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String zzh(Context context, View view, Activity activity) {
        return l(context, null, 2, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final synchronized void zzk(MotionEvent motionEvent) {
        Long l4;
        try {
            if (this.f13308W) {
                k();
                this.f13308W = false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f13301P = 0.0d;
                this.f13302Q = motionEvent.getRawX();
                this.f13303R = motionEvent.getRawY();
            } else if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d6 = rawX - this.f13302Q;
                double d8 = rawY - this.f13303R;
                this.f13301P += Math.sqrt((d8 * d8) + (d6 * d6));
                this.f13302Q = rawX;
                this.f13303R = rawY;
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 == 1) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        this.f13292G = motionEventObtain;
                        this.f13293H.add(motionEventObtain);
                        if (this.f13293H.size() > 6) {
                            ((MotionEvent) this.f13293H.remove()).recycle();
                        }
                        this.f13296K++;
                        this.f13298M = f(new Throwable().getStackTrace());
                    } else if (action2 == 2) {
                        this.f13295J += (long) (motionEvent.getHistorySize() + 1);
                        W4 w4J = j(motionEvent);
                        Long l8 = w4J.f17159d;
                        if (l8 != null && w4J.f17162g != null) {
                            this.f13299N = l8.longValue() + w4J.f17162g.longValue() + this.f13299N;
                        }
                        if (this.f13310Y != null && (l4 = w4J.f17160e) != null && w4J.f17163h != null) {
                            this.f13300O = l4.longValue() + w4J.f17163h.longValue() + this.f13300O;
                        }
                    } else if (action2 == 3) {
                        this.f13297L++;
                    }
                } catch (Q4 unused) {
                }
            } else {
                this.f13304S = motionEvent.getX();
                this.f13305T = motionEvent.getY();
                this.f13306U = motionEvent.getRawX();
                this.f13307V = motionEvent.getRawY();
                this.f13294I++;
            }
            this.f13309X = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final synchronized void zzl(int i8, int i9, int i10) {
        try {
            if (this.f13292G != null) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15909p2)).booleanValue()) {
                    k();
                } else {
                    this.f13292G.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.f13310Y;
            if (displayMetrics != null) {
                float f8 = displayMetrics.density;
                this.f13292G = MotionEvent.obtain(0L, i10, 1, i8 * f8, i9 * f8, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.f13292G = null;
            }
            this.f13309X = false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
