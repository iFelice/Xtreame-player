package com.google.android.gms.internal.ads;

import W0.C0374g;
import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class G4 extends F4 {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final Object f13476e0 = new Object();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static boolean f13477f0 = false;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static long f13478g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static K4 f13479h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static C1085b5 f13480i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static C0374g f13481j0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final J2.t f13482b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Z4 f13483c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final HashMap f13484d0;

    public G4(Context context, J2.t tVar) {
        super(context);
        this.f13484d0 = new HashMap();
        this.f13482b0 = tVar;
    }

    public static V4 m(Context context, boolean z7) {
        if (F4.f13291a0 == null) {
            synchronized (f13476e0) {
                try {
                    if (F4.f13291a0 == null) {
                        V4 v4B = V4.b(context, z7);
                        if (v4B.f16954p) {
                            try {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15781a3)).booleanValue()) {
                                    v4B.d("uqJEUYtMC6igyTZFAAEE75NBgASQTYxYWvVnS4oyIqiXJPhpeFyV9nSFbcfeIJKd", "ohDvI7zbCm/xKMRj1Hz7rmq6fpy+yyQOEDUkZ/+cKWg=", new Class[0]);
                                }
                            } catch (IllegalStateException unused) {
                            }
                            v4B.d("bxhlS+byKsEaHbhXEyi6TD/EqtsG2sd2GfInhSI7yciYukoqPk/w1i7LSDrcmmYr", "gWtAtoadyS/0GQFYvFINsjkt4bRjT5fE+w3tC36yAJU=", Context.class);
                            v4B.d("5UR6HKB81c0cBAmhqUCkwnSn0PivsbvOC36lSRnvbJazdJtsmM3DNCGH8hJ11MS9", "UrsneQ7OIRNo8EjOO9YdieQqewqlcsXgRCgjv7EyHmQ=", Context.class);
                            v4B.d("mh3tdFapbE/sJv8Vo+tGtSqGob+34XuR/yQkwrU1NOisAE1Jls0cSJi5Lk8Oid+3", "sgSNHgqJ9EwYu8w2dMx3zRGSIiO9D1spUgPO3F51srA=", Context.class);
                            v4B.d("c/axzSlC5CKyeVvYpod083FD/YK+zLXfDqtD5AYe9EXr6xyYayRD+veafiAlev8F", "JFMtS6Z9bzmnMwoeWTxjTTnvJVVZDuewSTBrvx9CdBc=", Context.class);
                            v4B.d("lVUtMgOC8oCk0OL1R8+dcIzJX9C75UT4Pn6J82++vFrHU4GwQD+682Yf0fGqttpS", "RRAtLSPp4UfCvUq8TqKgqVcK2MQ98P/X8fWWJOdf6yU=", Context.class);
                            Class cls = Boolean.TYPE;
                            v4B.d("pkxrOWj7zD1ScyeXlo8fp1m52MhBIE9QvURtfE4hxB81XVp6EbBK8CYQjvvhYlf1", "OfZFeGMpPN4nP2QoVlOsW4kmNx194lMXDh8YPc+yAeg=", Context.class, cls);
                            v4B.d("19nlSd1PMyXKl1niHXaxZmvGyLnyitkJHQnkLHtPHLj6n1sor4NdBFlTmnlba7BL", "8mLoio5zXFzLNZDTURhMAugjCGrSPBhh3GCaf2t8mPk=", Context.class);
                            v4B.d("yunpg/6VdKt9qYWjYKs5tjKMiKriIKdWWgRCb/dxRRCrip4tXKwty8n3U/lUpwOV", "nCcHhBJ+r5jDr0ERNbOfBIJ/pDQFZIqvHaO2vAiQNRE=", Context.class);
                            v4B.d("bVq06mwryvswJ9TEv8eKHMxwi9DjT7SQH2xL+admUqskqroPQT0vVkasNMzV5jv7", "EByWffqzraQVS82Db2+ro2d9ZqC8EsuKj9igHJ6rpI4=", MotionEvent.class, DisplayMetrics.class);
                            v4B.d("pSQoWHdFqf8FxrFh/c3UdBWF16OW6yp/zWpxt2kX61Wv+QY4WkeyFhaCYkiWXfUx", "b4xBpY1Zr7toyC1sOTTNBO4ImhCct0sLu70B1nFUAHo=", MotionEvent.class, DisplayMetrics.class);
                            v4B.d("MyezUX/G4B4IwyhTDkP3w1lDN+jx4NQ6UyU5K5beVZyubOhn8Q7qD9UAXT+3eaCC", "vDxCHtRyDtZtywG/lqG2i2wEAK0QRlsYMxcEu2Y9QxY=", new Class[0]);
                            v4B.d("FIygBXZrpziR+Pp2xmzyZ9k6GUcrj9kWbY5XuUd40ERy2hxHTKqhUwfuGSusXUTd", "t4LignzpQnyAJJAZeU8P3GGD0dgmuTMT4n9grwU+EMc=", new Class[0]);
                            v4B.d("Cjpz94Jf9g0GnoeURiYkrUgpYgxkMbj/9b/+FncAnrZMhBxpDl2Bsri9U5qLhwFe", "7Ejn4kVFfkIwTENQCsQUmu0CsZi/nLRRU7QLVgsNDkU=", new Class[0]);
                            v4B.d("CyzY1Dq9Z94V5QdB/DvLAvp7GpoAO1TL85fhRTvPR0h7u5BGepLTIyh10t/XTOrZ", "skGQhdInPY4sBMicxMlDA8FpM67X6t386GsGM5hjG6o=", new Class[0]);
                            v4B.d("yTyv47DW9aV6rpyU1wL04puCd80cKdCTVtCqLwFmVTX0TBccJdZ4Z0bBqZNN3F0R", "JYsm/UNRvgpUWKzxuCnz29cSU61JkF5E/yr5Nm+WBTM=", new Class[0]);
                            v4B.d("0kr13TIqRr0Mkim2K4wTtB+PeWlqdIn0V95/3g6ojAuM6jvjN6OT9QeeEcwm9v6h", "pwlWlXowmv5MgDBY81mya6zXLrSMULDo97qGgXQvfFI=", new Class[0]);
                            v4B.d("5gR2Yi2k1qmqwB908rtZUebo4TzAbjEGSkWYIuNbRdnGPocO4kIxU9dsn2qP+c0J", "NnIoFyYmTm9Yd/i5F1TZFAo2tPeZkpFEZBtgPBr60Ow=", Context.class, cls, String.class);
                            v4B.d("qb9dl/IB08b/6izFoDp5ONFGusaE64enfOjVCLWlhNF7+NrRoaDnYUmwC44nswXK", "+1rx5i0z5L53m4fOjp1rgOA40SLCpA1mGw0uq9igoow=", StackTraceElement[].class);
                            v4B.d("1eASkBAriCqBxPWd4okyyc+CHCTvdkAuw8U5qBN0KobaC6TQVXZIuItjy1xo8n06", "/3NjDB70kyJmgPDiCMkSHOH5fxmpgd9Ky8mxWyDVFDM=", View.class, DisplayMetrics.class, cls, cls);
                            v4B.d("ErPP4PypQmbjNzzBcpPEb7SMjpueU0b2D5VyuZDUz95tFtao7lfnsWucNRKS/8//", "Gt05wIkB9VlCQDpYnwS+bvW/Sf4rdLdhAuNRhSCvQ2I=", Context.class, cls);
                            v4B.d("3ikNbWzMTIqU222KtrzzFiiUcpXtNPU8upxs9wXDAJYxbW4sx23+rx4eBiJjRteZ", "TdQDsqdcAU8jyTN6NihYJULAUxAJpTfNWWUTPnMXLns=", View.class, Activity.class, cls);
                            v4B.d("fITy8eyNabiNCHuPyNX0x482LGXuzWIuGD/71SlN2nKRI9kSJNQ0LUuMwsl06lrx", "tMANUUGyytjQo/XDHg2IEhabePFT+VIo7wkY/Wjo6Gc=", Long.TYPE);
                            v4B.d("HKR8yJb1bSJu8LVlqpKC/lk4sWm3Ji10GkyhxRQoJd2Yb8vz2/7ATJhGRkBQpjA8", "3Dv+WIEpWKEbBzcuP3SgLUV0aXQTnDSdpPKu/RzIzoY=", new Class[0]);
                            try {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15808d3)).booleanValue()) {
                                    v4B.d("JZBFNEdYFhTFBTCRgtU3dDnkdlKXmKLHUW9VyRRgLZX35JOvzKEIQuHunyCpcG/w", "nv6PiabX0G4RLHtriKodA9C0rOBToujvB9ySFMp3wxE=", Context.class);
                                }
                            } catch (IllegalStateException unused2) {
                            }
                            v4B.d("QkUPtkYUgz2Q7QzT++W7/LvSL/+jztV0vuOJ6F0a3TCpRf9UbWz3aw54p4TaC7dW", "AjndXp1s5xIDXysf7TNVubDac7r00lcAtHKozpGmJzQ=", Context.class);
                            try {
                                if (Build.VERSION.SDK_INT >= 26 && ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15816e3)).booleanValue()) {
                                    Class cls2 = Long.TYPE;
                                    v4B.d("AFi1XUlQ2wB7zUl3EOk1zuEn8ZOxUh72pRw/0ERKEaN1JtcMwtQuK14gG9CY64a/", "Q54q2JslusSv8X8AsH7nKgnoWyF6GsnL4uj/9o5E5cc=", NetworkCapabilities.class, cls2, cls2);
                                }
                            } catch (IllegalStateException unused3) {
                            }
                            try {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue()) {
                                    v4B.d("qmKK3b5gFczPFV6EXQK4o/dThX0H+NXEfphwaNTcj5pJFkabLh1X9vORrSfnOkeV", "GajzmnIGCWKypTldGXdzGSwHW6ZZV69Bh6cWfmyAJmA=", List.class);
                                }
                            } catch (IllegalStateException unused4) {
                            }
                            try {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
                                    Class cls3 = Long.TYPE;
                                    v4B.d("s/IaC73MjD9vpfzZvssIGR7eelXzGompBCRU9Px19GF39ZofYoD29ElcUTZqSvpM", "t30h8UZEoZP8GE77k4AdlDjTvNQpvs7DHs10k6C9ZzU=", cls3, cls3, cls3, cls3);
                                } else {
                                    try {
                                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15964w2)).booleanValue()) {
                                            v4B.d("8HOKLqLOucCjn3kWyyKimNsF6Dcutdd9y3ap015kDIWZNsgYbLJqzHSzKo+jDSQ4", "ikPkuPQbpnIYaQGo6Ao4zzPX0Qaf9HhmEZeT4ZfFQOg=", long[].class, Context.class, View.class);
                                        }
                                    } catch (IllegalStateException unused5) {
                                    }
                                }
                            } catch (IllegalStateException unused6) {
                            }
                        }
                        F4.f13291a0 = v4B;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return F4.f13291a0;
    }

    public static W4 n(V4 v5, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws Q4 {
        Method methodC = v5.c("bVq06mwryvswJ9TEv8eKHMxwi9DjT7SQH2xL+admUqskqroPQT0vVkasNMzV5jv7", "EByWffqzraQVS82Db2+ro2d9ZqC8EsuKj9igHJ6rpI4=");
        if (methodC == null || motionEvent == null) {
            throw new Q4();
        }
        try {
            return new W4((String) methodC.invoke(null, motionEvent, displayMetrics));
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new Q4(e8);
        }
    }

    public static final void q(List list) {
        ExecutorService executorService;
        if (F4.f13291a0 == null || (executorService = F4.f13291a0.f16940b) == null || list.isEmpty()) {
            return;
        }
        try {
            executorService.invokeAll(list, ((Long) C3099q.f26624d.f26627c.a(Q7.f15933s2)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e8) {
            StringWriter stringWriter = new StringWriter();
            e8.printStackTrace(new PrintWriter(stringWriter));
            p000a.r.q("class methods got exception: ", stringWriter.toString(), "G4");
        }
    }

    public static G4 r(Context context, J2.t tVar) {
        boolean z7 = tVar.f4125H;
        synchronized (G4.class) {
            try {
                if (!f13477f0) {
                    f13478g0 = System.currentTimeMillis() / 1000;
                    F4.f13291a0 = m(context, z7);
                    J7 j8 = Q7.f15816e3;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        f13479h0 = context != null ? new K4((ConnectivityManager) context.getSystemService("connectivity")) : null;
                    }
                    ExecutorService executorService = F4.f13291a0.f16940b;
                    if (((Boolean) c3099q.f26627c.a(Q7.f15825f3)).booleanValue() && executorService != null) {
                        f13480i0 = C1085b5.a(context, executorService);
                    }
                    if (((Boolean) c3099q.f26627c.a(Q7.f15972x2)).booleanValue()) {
                        f13481j0 = new C0374g();
                    }
                    f13477f0 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new G4(context, tVar);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void a(View view) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15957v2)).booleanValue()) {
            if (this.f13483c0 == null) {
                V4 v5 = F4.f13291a0;
                this.f13483c0 = new Z4(v5.f16939a, v5.f16955q);
            }
            this.f13483c0.a(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.F4
    public final long f(StackTraceElement[] stackTraceElementArr) throws Q4 {
        Method methodC = F4.f13291a0.c("qb9dl/IB08b/6izFoDp5ONFGusaE64enfOjVCLWlhNF7+NrRoaDnYUmwC44nswXK", "+1rx5i0z5L53m4fOjp1rgOA40SLCpA1mGw0uq9igoow=");
        if (methodC == null || stackTraceElementArr == null) {
            throw new Q4();
        }
        try {
            return new J4((String) methodC.invoke(null, stackTraceElementArr), 1).f14121b.longValue();
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new Q4(e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.F4
    public final V3 g(Context context, View view, Activity activity) {
        C1085b5 c1085b5 = f13480i0;
        if (c1085b5 != null && c1085b5.f18016d) {
            c1085b5.f18014b = System.currentTimeMillis();
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
            C0374g c0374g = f13481j0;
            c0374g.f7419h = c0374g.f7418g;
            c0374g.f7418g = SystemClock.uptimeMillis();
        }
        V3 v3A0 = C1496j4.a0();
        J2.t tVar = this.f13482b0;
        if (!TextUtils.isEmpty((String) tVar.f4126I)) {
            String str = (String) tVar.f4126I;
            v3A0.d();
            C1496j4.A0((C1496j4) v3A0.f20255H, str);
        }
        p(m(context, tVar.f4125H), v3A0, view, activity, true, context);
        return v3A0;
    }

    @Override // com.google.android.gms.internal.ads.F4
    public final V3 h(Context context) {
        ArrayList arrayListO;
        C1085b5 c1085b5 = f13480i0;
        if (c1085b5 != null && c1085b5.f18016d) {
            c1085b5.f18014b = System.currentTimeMillis();
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
            C0374g c0374g = f13481j0;
            c0374g.f7413b = c0374g.f7412a;
            c0374g.f7412a = SystemClock.uptimeMillis();
        }
        V3 v3A0 = C1496j4.a0();
        J2.t tVar = this.f13482b0;
        if (!TextUtils.isEmpty((String) tVar.f4126I)) {
            String str = (String) tVar.f4126I;
            v3A0.d();
            C1496j4.A0((C1496j4) v3A0.f20255H, str);
        }
        V4 v4M = m(context, tVar.f4125H);
        if (v4M.f16940b != null) {
            if (tVar.f4125H) {
                int iA = v4M.a();
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(o(v4M, context, v3A0));
                arrayList.add(new C1188d5(v4M, v3A0, iA, 3));
                arrayListO = arrayList;
            } else {
                arrayListO = o(v4M, context, v3A0);
            }
            q(arrayListO);
        }
        return v3A0;
    }

    @Override // com.google.android.gms.internal.ads.F4
    public final V3 i(Context context, View view, Activity activity) {
        C1085b5 c1085b5 = f13480i0;
        if (c1085b5 != null && c1085b5.f18016d) {
            c1085b5.f18014b = System.currentTimeMillis();
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
            f13481j0.c(context, view);
        }
        V3 v3A0 = C1496j4.a0();
        J2.t tVar = this.f13482b0;
        String str = (String) tVar.f4126I;
        v3A0.d();
        C1496j4.A0((C1496j4) v3A0.f20255H, str);
        p(m(context, tVar.f4125H), v3A0, view, activity, false, context);
        return v3A0;
    }

    @Override // com.google.android.gms.internal.ads.F4
    public final W4 j(MotionEvent motionEvent) throws Q4 {
        Method methodC = F4.f13291a0.c("pSQoWHdFqf8FxrFh/c3UdBWF16OW6yp/zWpxt2kX61Wv+QY4WkeyFhaCYkiWXfUx", "b4xBpY1Zr7toyC1sOTTNBO4ImhCct0sLu70B1nFUAHo=");
        if (methodC == null || motionEvent == null) {
            throw new Q4();
        }
        try {
            return new W4((String) methodC.invoke(null, motionEvent, this.f13310Y));
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new Q4(e8);
        }
    }

    public final ArrayList o(V4 v5, Context context, V3 v7) {
        long j8;
        long j9;
        int iA = v5.a();
        ArrayList arrayList = new ArrayList();
        if (!v5.f16954p) {
            v7.d();
            C1496j4.K0((C1496j4) v7.f20255H, 16384L);
            return arrayList;
        }
        arrayList.add(new C1343g5(v5, v7, iA, context, (U3) this.f13482b0.f4127J));
        arrayList.add(new C1447i5(v5, v7, f13478g0, iA));
        arrayList.add(new C1757o5(v5, v7, iA));
        arrayList.add(new C1136c5(v5, v7, iA, context));
        arrayList.add(new C1912r5(v5, "FIygBXZrpziR+Pp2xmzyZ9k6GUcrj9kWbY5XuUd40ERy2hxHTKqhUwfuGSusXUTd", "t4LignzpQnyAJJAZeU8P3GGD0dgmuTMT4n9grwU+EMc=", v7, iA, 33));
        arrayList.add(new C1291f5(v5, v7, iA, context));
        arrayList.add(new C1188d5(v5, v7, iA, 2));
        arrayList.add(new C1188d5(v5, v7, iA, 5));
        arrayList.add(new C1188d5(v5, v7, iA, 6));
        arrayList.add(new C1395h5(v5, v7, iA));
        arrayList.add(new C1653m5(v5, v7, iA));
        arrayList.add(new C1188d5(v5, v7, iA, 9));
        arrayList.add(new C1188d5(v5, v7, iA, 1));
        arrayList.add(new C1188d5(v5, v7, iA, 8));
        arrayList.add(new C1809p5(v5, v7, iA));
        if (Build.VERSION.SDK_INT >= 24) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15816e3)).booleanValue()) {
                C1085b5 c1085b5 = f13480i0;
                if (c1085b5 != null) {
                    long j10 = c1085b5.f18016d ? c1085b5.f18014b - c1085b5.f18013a : -1L;
                    long j11 = c1085b5.f18015c;
                    c1085b5.f18015c = -1L;
                    j9 = j11;
                    j8 = j10;
                } else {
                    j8 = -1;
                    j9 = -1;
                }
                arrayList.add(new C1705n5(v5, v7, iA, f13479h0, j8, j9));
            }
        }
        J7 j12 = Q7.f15808d3;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j12)).booleanValue()) {
            arrayList.add(new C1188d5(v5, v7, iA, 7));
        }
        arrayList.add(new C1188d5(v5, v7, iA, 4));
        if (((Boolean) c3099q.f26627c.a(Q7.f15843h3)).booleanValue()) {
            arrayList.add(new C1188d5(v5, v7, iA, 0));
        }
        return arrayList;
    }

    public final void p(V4 v5, V3 v7, View view, Activity activity, boolean z7, Context context) {
        List listAsList;
        int i8 = 0;
        if (v5.f16954p) {
            s(v5, v7);
            ArrayList arrayList = new ArrayList();
            if (v5.f16940b != null) {
                int iA = v5.a();
                arrayList.add(new CallableC1497j5(i8, v5, v7));
                arrayList.add(new C1757o5(v5, v7, iA));
                arrayList.add(new C1447i5(v5, v7, f13478g0, iA));
                arrayList.add(new C1395h5(v5, v7, iA));
                arrayList.add(new C1188d5(v5, v7, iA, 5));
                arrayList.add(new C1188d5(v5, v7, iA, 6));
                arrayList.add(new C1653m5(v5, v7, iA));
                arrayList.add(new C1188d5(v5, v7, iA, 2));
                arrayList.add(new C1188d5(v5, v7, iA, 9));
                arrayList.add(new C1188d5(v5, v7, iA, 1));
                arrayList.add(new C1188d5(v5, v7, iA, 8));
                arrayList.add(new C1549k5(v5, v7, iA, new Throwable().getStackTrace()));
                arrayList.add(new C1549k5(v5, v7, iA, view));
                arrayList.add(new C1809p5(v5, v7, iA));
                J7 j8 = Q7.f15941t2;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    arrayList.add(new C1136c5(v5, v7, iA, view, activity));
                }
                J7 j9 = Q7.f15843h3;
                O7 o7 = c3099q.f26627c;
                if (((Boolean) o7.a(j9)).booleanValue()) {
                    arrayList.add(new C1188d5(v5, v7, iA, 0));
                }
                if (!z7) {
                    try {
                        if (((Boolean) o7.a(Q7.f15964w2)).booleanValue()) {
                            arrayList.add(new C1601l5(v5, v7, iA, this.f13484d0, view, context));
                        }
                    } catch (IllegalStateException unused) {
                    }
                    try {
                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
                            arrayList.add(new C1549k5(v5, v7, iA, f13481j0));
                        }
                    } catch (IllegalStateException unused2) {
                    }
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue()) {
                        arrayList.add(new C1549k5(v5, v7, iA, this.f13311Z));
                    }
                } else if (((Boolean) o7.a(Q7.f15957v2)).booleanValue()) {
                    arrayList.add(new C1861q5(v5, v7, iA, this.f13483c0));
                }
            }
            listAsList = arrayList;
        } else {
            v7.d();
            C1496j4.K0((C1496j4) v7.f20255H, 16384L);
            listAsList = Arrays.asList(new CallableC1497j5(i8, v5, v7));
        }
        q(listAsList);
    }

    public final synchronized void s(V4 v5, V3 v7) {
        MotionEvent motionEvent;
        try {
            try {
                W4 w4N = n(v5, this.f13292G, this.f13310Y);
                Long l4 = w4N.f17156a;
                if (l4 != null) {
                    long jLongValue = l4.longValue();
                    v7.d();
                    C1496j4.G0((C1496j4) v7.f20255H, jLongValue);
                }
                Long l8 = w4N.f17157b;
                if (l8 != null) {
                    long jLongValue2 = l8.longValue();
                    v7.d();
                    C1496j4.H0((C1496j4) v7.f20255H, jLongValue2);
                }
                Long l9 = w4N.f17158c;
                if (l9 != null) {
                    long jLongValue3 = l9.longValue();
                    v7.d();
                    C1496j4.I0((C1496j4) v7.f20255H, jLongValue3);
                }
                if (this.f13309X) {
                    Long l10 = w4N.f17159d;
                    if (l10 != null) {
                        long jLongValue4 = l10.longValue();
                        v7.d();
                        C1496j4.D((C1496j4) v7.f20255H, jLongValue4);
                    }
                    Long l11 = w4N.f17160e;
                    if (l11 != null) {
                        long jLongValue5 = l11.longValue();
                        v7.d();
                        C1496j4.E((C1496j4) v7.f20255H, jLongValue5);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        } catch (Q4 unused) {
        }
        C1290f4 c1290f4A = C1342g4.A();
        if (this.f13294I > 0) {
            DisplayMetrics displayMetrics = this.f13310Y;
            char[] cArr = X4.f17380a;
            if (displayMetrics != null && displayMetrics.density != 0.0f) {
                long jA = X4.a(this.f13301P, displayMetrics);
                c1290f4A.d();
                C1342g4.M((C1342g4) c1290f4A.f20255H, jA);
                long jA2 = X4.a(this.f13306U - this.f13304S, this.f13310Y);
                c1290f4A.d();
                C1342g4.N((C1342g4) c1290f4A.f20255H, jA2);
                long jA3 = X4.a(this.f13307V - this.f13305T, this.f13310Y);
                c1290f4A.d();
                C1342g4.O((C1342g4) c1290f4A.f20255H, jA3);
                long jA4 = X4.a(this.f13304S, this.f13310Y);
                c1290f4A.d();
                C1342g4.R((C1342g4) c1290f4A.f20255H, jA4);
                long jA5 = X4.a(this.f13305T, this.f13310Y);
                c1290f4A.d();
                C1342g4.S((C1342g4) c1290f4A.f20255H, jA5);
                if (this.f13309X && (motionEvent = this.f13292G) != null) {
                    long jA6 = X4.a(((this.f13304S - this.f13306U) + motionEvent.getRawX()) - this.f13292G.getX(), this.f13310Y);
                    if (jA6 != 0) {
                        c1290f4A.d();
                        C1342g4.P((C1342g4) c1290f4A.f20255H, jA6);
                    }
                    long jA7 = X4.a(((this.f13305T - this.f13307V) + this.f13292G.getRawY()) - this.f13292G.getY(), this.f13310Y);
                    if (jA7 != 0) {
                        c1290f4A.d();
                        C1342g4.Q((C1342g4) c1290f4A.f20255H, jA7);
                    }
                }
            }
        }
        try {
            W4 w4J = j(this.f13292G);
            Long l12 = w4J.f17156a;
            if (l12 != null) {
                long jLongValue6 = l12.longValue();
                c1290f4A.d();
                C1342g4.B((C1342g4) c1290f4A.f20255H, jLongValue6);
            }
            Long l13 = w4J.f17157b;
            if (l13 != null) {
                long jLongValue7 = l13.longValue();
                c1290f4A.d();
                C1342g4.C((C1342g4) c1290f4A.f20255H, jLongValue7);
            }
            long jLongValue8 = w4J.f17158c.longValue();
            c1290f4A.d();
            C1342g4.I((C1342g4) c1290f4A.f20255H, jLongValue8);
            if (this.f13309X) {
                Long l14 = w4J.f17160e;
                if (l14 != null) {
                    long jLongValue9 = l14.longValue();
                    c1290f4A.d();
                    C1342g4.D((C1342g4) c1290f4A.f20255H, jLongValue9);
                }
                Long l15 = w4J.f17159d;
                if (l15 != null) {
                    long jLongValue10 = l15.longValue();
                    c1290f4A.d();
                    C1342g4.G((C1342g4) c1290f4A.f20255H, jLongValue10);
                }
                Long l16 = w4J.f17161f;
                if (l16 != null) {
                    int i8 = l16.longValue() != 0 ? 2 : 1;
                    c1290f4A.d();
                    C1342g4.T((C1342g4) c1290f4A.f20255H, i8);
                }
                long j8 = this.f13295J;
                if (j8 > 0) {
                    DisplayMetrics displayMetrics2 = this.f13310Y;
                    char[] cArr2 = X4.f17380a;
                    Long lValueOf = (displayMetrics2 == null || displayMetrics2.density == 0.0f) ? null : Long.valueOf(Math.round(this.f13300O / j8));
                    if (lValueOf != null) {
                        long jLongValue11 = lValueOf.longValue();
                        c1290f4A.d();
                        C1342g4.E((C1342g4) c1290f4A.f20255H, jLongValue11);
                    } else {
                        c1290f4A.d();
                        C1342g4.F((C1342g4) c1290f4A.f20255H);
                    }
                    long jRound = Math.round(this.f13299N / this.f13295J);
                    c1290f4A.d();
                    C1342g4.H((C1342g4) c1290f4A.f20255H, jRound);
                }
                Long l17 = w4J.f17164i;
                if (l17 != null) {
                    long jLongValue12 = l17.longValue();
                    c1290f4A.d();
                    C1342g4.K((C1342g4) c1290f4A.f20255H, jLongValue12);
                }
                Long l18 = w4J.f17165j;
                if (l18 != null) {
                    long jLongValue13 = l18.longValue();
                    c1290f4A.d();
                    C1342g4.J((C1342g4) c1290f4A.f20255H, jLongValue13);
                }
                Long l19 = w4J.f17166k;
                if (l19 != null) {
                    int i9 = l19.longValue() != 0 ? 2 : 1;
                    c1290f4A.d();
                    C1342g4.U((C1342g4) c1290f4A.f20255H, i9);
                }
            }
        } catch (Q4 unused2) {
        }
        long j9 = this.f13298M;
        if (j9 > 0) {
            c1290f4A.d();
            C1342g4.L((C1342g4) c1290f4A.f20255H, j9);
        }
        C1342g4 c1342g4 = (C1342g4) c1290f4A.b();
        v7.d();
        C1496j4.Q((C1496j4) v7.f20255H, c1342g4);
        long j10 = this.f13294I;
        if (j10 > 0) {
            v7.d();
            C1496j4.H((C1496j4) v7.f20255H, j10);
        }
        long j11 = this.f13295J;
        if (j11 > 0) {
            v7.d();
            C1496j4.G((C1496j4) v7.f20255H, j11);
        }
        long j12 = this.f13296K;
        if (j12 > 0) {
            v7.d();
            C1496j4.F((C1496j4) v7.f20255H, j12);
        }
        long j13 = this.f13297L;
        if (j13 > 0) {
            v7.d();
            C1496j4.I((C1496j4) v7.f20255H, j13);
        }
        try {
            int size = this.f13293H.size() - 1;
            if (size > 0) {
                v7.d();
                C1496j4.S((C1496j4) v7.f20255H);
                for (int i10 = 0; i10 < size; i10++) {
                    W4 w4N2 = n(F4.f13291a0, (MotionEvent) this.f13293H.get(i10), this.f13310Y);
                    C1290f4 c1290f4A2 = C1342g4.A();
                    long jLongValue14 = w4N2.f17156a.longValue();
                    c1290f4A2.d();
                    C1342g4.B((C1342g4) c1290f4A2.f20255H, jLongValue14);
                    long jLongValue15 = w4N2.f17157b.longValue();
                    c1290f4A2.d();
                    C1342g4.C((C1342g4) c1290f4A2.f20255H, jLongValue15);
                    C1342g4 c1342g5 = (C1342g4) c1290f4A2.b();
                    v7.d();
                    C1496j4.R((C1496j4) v7.f20255H, c1342g5);
                }
            }
        } catch (Q4 unused3) {
            v7.d();
            C1496j4.S((C1496j4) v7.f20255H);
        }
    }
}
