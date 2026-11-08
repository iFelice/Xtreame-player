package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
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
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2766m1 extends AbstractC2750k1 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static C2805r1 f23952A = null;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static H1 f23953B = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final Object f23954x = new Object();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static boolean f23955y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static long f23956z;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f23957u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public F1 f23958v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final HashMap f23959w;

    public AbstractC2766m1(Context context) {
        super(context);
        this.f23959w = new HashMap();
        this.f23957u = HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static A1 j(Context context, boolean z7) {
        if (AbstractC2750k1.f23888t == null) {
            synchronized (f23954x) {
                try {
                    if (AbstractC2750k1.f23888t == null) {
                        A1 a1B = A1.b(context, z7);
                        if (a1B.f23440p) {
                            try {
                                if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23937n)).booleanValue()) {
                                    a1B.d("hwvIMOeohSBrCWT4pVkQok22g/l0cZbbqOTmNbjObWwcwhLlaFMNibQmd2cIB1Vb", "24f7+wNdQe8HQwz0gPH2QIzxUp8iQNA20yBU7Dg74Sc=", new Class[0]);
                                }
                            } catch (IllegalStateException unused) {
                            }
                            a1B.d("ysEnh8zkgcN8WwINs5FP7vGybZW2TtVSX36HO6emvdUrcCkVbC9hrF5Pe5ZSZx3i", "3LpdW89cIASEFv5WvS5ZDEWsiVGQitP33SL3WZgJ6zE=", Context.class);
                            a1B.d("joxZSCFIfSio2J1Z0g3HMtlcDGNvogfMyrj1e2b+qPNv6DXnDVXfwkgCXW9zFWFC", "iJiFXDBrMwFOGpG8WmWNKc3sGwXbWv8N6fPQac0mMm0=", Context.class);
                            a1B.d("tPxcLkiesd8JzrYIyuRbLGxWAQfsX+C1jrJaS2rsRu6lU/ve1b9hEzSSzo6VwqXx", "0RWQk7vrKrAXtxwBYq7T9nI/JnUnK0yiZtx30+mk7/g=", Context.class);
                            a1B.d("C6OPKdOx6rUdfDdOmaUimt8yM1FrOv7bKCITdJ0Uo74WwXDfvXouJ4oz4kHBjTSk", "dTWRHHPyYq/fNXOTAS/wjayGzv2SlrSwyDcB+vX+h5Q=", Context.class);
                            a1B.d("Ls+ZUCEdSGy+47NpfWc5WNy2WCTB2lhysvWY8PCvkdyqiw8HkO3XVSxwPIsY4tvv", "1yJaDnXEM3em29nHb3kYjIOvpW6Mkce5Fji3syGd7T0=", Context.class);
                            Class cls = Boolean.TYPE;
                            a1B.d("vkfQoQl1Rxr7/uvSSRcOrQI31A6S/KAPW33nf5P0hYbuVy6BLjHzjUB4OEnneXoS", "SfaCE2ReDSQ3+KDKcvA6SSrX7nuWYsM/FN3ZFmlH0dA=", Context.class, cls);
                            a1B.d("6CWPidOWJZFxRWI8V7yi3OiMbOhIWZX/jTayTGRwqCM0W8dtKHQOPe60TuQicfhG", "gYPijpNio6OwLgbzbH6IuWSNtvp7bCV5UMbKZJCVNdg=", Context.class);
                            a1B.d("6vt+8E5GP5AwoxquDM0Y7lVJzS23/VCjNo5D8xB8rgAaaF6IhToGZhlIAUkgigHl", "jx9F7EAIAhvEI8G+/hWsHBitt0z+K8moFRn7/w45eYc=", Context.class);
                            a1B.d("tVSI3GZQAGRITfe/VNiB0JAqJe5Pfq0lPruET3IJQ2F3N6dl8hPg+ZOAK3nXD45u", "1VeJuVnEfsh9S8+TnOEDCfIzscTATtniwvJaQ7/W6I8=", MotionEvent.class, DisplayMetrics.class);
                            a1B.d("CkzLLxV5zSb+jeaEDnt9Q3eBrpVMtqnw6wBKNocN2YzoApdHEqHkRi4x0VOMDtd4", "nVNp1WYfnkUt4CgZM9ftj8WNocg8ldySiFlqCJaJia4=", MotionEvent.class, DisplayMetrics.class);
                            a1B.d("zwwnNjW/9dn+p0q/2u+mmA6XQB8+gtknmtJMKP3tBmoncBehPCILsKxRnck9yFjA", "vpqgk7W2OO4+emKKnTSxckIsP1c64LGVSWcdsnDvr3w=", new Class[0]);
                            a1B.d("5BhEc19mhLCb3gixLpO/usqpdcrz8iDHUvKRNr8tUAX9rUzF0wog6vEOJrftvcpW", "yZHUQ89G8fTgEsMNs0hBrXwZIrb4VL1iE12C/t/Y3UE=", new Class[0]);
                            a1B.d("Cv0JAL9ptzpRvgIi9AFTFGn0l5MhpPgpRN4VfZybymKMuiqBn9AG0bgJaX/QotAk", "/xONYRXeBwNZknPQ1yARx5KZSPQPbfL2mKAb1nbkf2s=", new Class[0]);
                            a1B.d("XFxH1z0dBuMDP7aWA+P/3WKwW9qr8sC2ASjEfciaKHfSLryjCNl4cmJgfsh2Tylb", "r0MNv9zqwvoUwASL1pBJjOA1OkDa8Kcs5NaA6VOkJEI=", new Class[0]);
                            a1B.d("N0mA2OgFUnHXhnZTWHrO10/LZw/fChWm76LMkbZzvR9G3lxQkMoE65IWMn9zBWSu", "uxIInGM9FQ+1gujg5A7z9IJxIqStl6tvqqzSbuEi494=", new Class[0]);
                            a1B.d("sdX902x/AS9226TxUXaqji9wP1uHqRQA8nkg2YMN1TcruTTaw008l9z5V3jZGjLO", "z3i9M2k4RJ/f7GArNBcGbUcpUFpuRmLev6S20UO7Vqs=", new Class[0]);
                            a1B.d("hhtrMjcGMTQSGdrv1+l2gakNTe0Pfchc8VT5kRHtsehlafuJ8JEE4iewNV4y5I/U", "o5W1eROpLyVNcsDGW3Y0lGc2x/V+mDPvMXouv3gbW6M=", Context.class, cls, String.class);
                            a1B.d("d2tnKFzXPwiZyQGi+81r0jKuUmc/wF2bs8mf3rZLUgisIeswnimQDm/skPYjpEo4", "e/DvqiTz4SkFtBEBn/3V8Pr2h2slHO4xuLOBAItCJ4w=", StackTraceElement[].class);
                            a1B.d("xcWDoPM3ZfO4P10VSUmZKRTMvsXPXnglJL31bwAJBgJGdSUy2IQG17s4MILOncV2", "9rXsTdb/WXYONX554dN5CJ2eqpcy9gFPMPi8uAjaHTA=", View.class, DisplayMetrics.class, cls, cls);
                            a1B.d("RjfRn/7K/Mx2/M8Fl6a7u1D5niklht4X0VG1cOixOa4SuaPG6Qd7la4v6f0IM/MO", "cZ2qwY2ZIJRch325gepGJtH7dQ9IcqmfWvaHdfiFi6Y=", Context.class, cls);
                            a1B.d("uJ6tafbdnitpIiJcEDt3zh4lzBZEYeFsW45S60suhbKyZNy2K2MuNEbuksualim4", "Cv/m6MvBjdOit7tT7cC+xPCpFEqovwYj4XIOcXUxCMs=", View.class, Activity.class, cls);
                            a1B.d("mkunJHFc5vhTAVOcsaNSYx7OvFB6slgbORGrA/joIDO0IYq5rQvDcAbp2AI6CPUh", "k8GEQUoJxJPI/0jAlfeUix8QD7WaaXAfMcSQAzrpgrU=", Long.TYPE);
                            a1B.d("w1mRpvC09hSNbQ10UvFXagm2P4TWR/T2KztJ+buPFQZnRnjxpdFVScAm9trUP6jM", "1tXSieficgPhud4YihA+CzunTIb+yA05iyb1BkAzMoc=", new Class[0]);
                            try {
                                if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23941r)).booleanValue()) {
                                    a1B.d("WepZYnT/MXyJE28LKN26NT6D3mAA2J2spDFApE1ixrQxTNXRg7wshW7BC/EU90LT", "sjYkfzJTuYKxh1jvZaP9n5dx9JGmzJotOUC/vdvgi4M=", Context.class);
                                }
                            } catch (IllegalStateException unused2) {
                            }
                            a1B.d("AZwRbSS9Tjg/vY6NNyDfd3mU35mZBbQduzRpliDRt3qUNjlKylmreq0JkiCiO6dF", "lsjUo68NMWNsPUz4dBIEYtWAZHRXaEljQLBgt48XQs4=", Context.class);
                            try {
                                if (Build.VERSION.SDK_INT >= 26 && ((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23942s)).booleanValue()) {
                                    Class cls2 = Long.TYPE;
                                    a1B.d("X9PgbTHLX0FFxbl3gdPDuVwcglfXy5CDrzo8siaVNaH+OIJ6JI34Wu3QK5rLega4", "JLulXGPEHVwHK+0FG96HP9my+NvwpTQbwIaIZrjn9OU=", NetworkCapabilities.class, cls2, cls2);
                                }
                            } catch (IllegalStateException unused3) {
                            }
                            try {
                                if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23934k)).booleanValue()) {
                                    a1B.d("RKC3mFMqGi7xOgQ7s39JMoZe9bnzGCFipcdUUf0vlgHDkBg7SvMkVmBGpwLs06ia", "8Xr1ilYJHo+oWZQAYAG91DIHBuqEmXK8yHtxL6KkyfU=", long[].class, Context.class, View.class);
                                }
                            } catch (IllegalStateException unused4) {
                            }
                        }
                        AbstractC2750k1.f23888t = a1B;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return AbstractC2750k1.f23888t;
    }

    public static B1 k(A1 a8, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws C2845w1 {
        Method methodC = a8.c("tVSI3GZQAGRITfe/VNiB0JAqJe5Pfq0lPruET3IJQ2F3N6dl8hPg+ZOAK3nXD45u", "1VeJuVnEfsh9S8+TnOEDCfIzscTATtniwvJaQ7/W6I8=");
        if (methodC == null || motionEvent == null) {
            throw new C2845w1();
        }
        try {
            return new B1((String) methodC.invoke(null, motionEvent, displayMetrics));
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new C2845w1(e8);
        }
    }

    public static synchronized void m(Context context, boolean z7) {
        try {
            if (f23955y) {
                return;
            }
            f23956z = System.currentTimeMillis() / 1000;
            AbstractC2750k1.f23888t = j(context, z7);
            C0325y c0325y = AbstractC2759l2.f23942s;
            C2727h2 c2727h2 = C2727h2.f23833d;
            if (((Boolean) c2727h2.f23836c.a(c0325y)).booleanValue()) {
                f23952A = new C2805r1((ConnectivityManager) context.getSystemService("connectivity"));
            }
            ExecutorService executorService = AbstractC2750k1.f23888t.f23426b;
            if (((Boolean) c2727h2.f23836c.a(AbstractC2759l2.f23943t)).booleanValue() && executorService != null) {
                String[] strArr = H1.f23537e;
                H1 h8 = new H1();
                h8.f23538a = 0L;
                h8.f23539b = 0L;
                h8.f23540c = -1L;
                h8.f23541d = false;
                if (Build.VERSION.SDK_INT >= 30) {
                    try {
                        ((AppOpsManager) context.getSystemService("appops")).startWatchingActive(strArr, executorService, new G1(h8));
                    } catch (IllegalArgumentException | NoSuchMethodError unused) {
                    }
                }
                f23953B = h8;
            }
            f23955y = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static final void n(List list) {
        ExecutorService executorService;
        if (AbstractC2750k1.f23888t == null || (executorService = AbstractC2750k1.f23888t.f23426b) == null || list.isEmpty()) {
            return;
        }
        try {
            executorService.invokeAll(list, ((Long) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23930g)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e8) {
            char[] cArr = C1.f23478a;
            StringWriter stringWriter = new StringWriter();
            e8.printStackTrace(new PrintWriter(stringWriter));
            p000a.r.q("class methods got exception: ", stringWriter.toString(), "m1");
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2750k1
    public final long a(StackTraceElement[] stackTraceElementArr) throws C2845w1 {
        Method methodC = AbstractC2750k1.f23888t.c("d2tnKFzXPwiZyQGi+81r0jKuUmc/wF2bs8mf3rZLUgisIeswnimQDm/skPYjpEo4", "e/DvqiTz4SkFtBEBn/3V8Pr2h2slHO4xuLOBAItCJ4w=");
        if (methodC == null || stackTraceElementArr == null) {
            throw new C2845w1();
        }
        try {
            return new C2798q1((String) methodC.invoke(null, stackTraceElementArr), 1).f23985b.longValue();
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new C2845w1(e8);
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2750k1
    public L4 b(Context context, View view, Activity activity) {
        H1 h8 = f23953B;
        if (h8 != null && h8.f23541d) {
            h8.f23539b = System.currentTimeMillis();
        }
        L4 l4M = C2765m0.M();
        String str = this.f23957u;
        if (!TextUtils.isEmpty(str)) {
            l4M.i(str);
        }
        l(j(context, false), l4M, view, activity, true);
        return l4M;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2750k1
    public final L4 c(Context context, F2 f8) {
        H1 h8 = f23953B;
        if (h8 != null && h8.f23541d) {
            h8.f23539b = System.currentTimeMillis();
        }
        L4 l4M = C2765m0.M();
        String str = this.f23957u;
        if (!TextUtils.isEmpty(str)) {
            l4M.i(str);
        }
        i(j(context, false), context, l4M, f8);
        if (f8 != null && f8.r()) {
            if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23935l)).booleanValue() && !C1.c(f8.p().p())) {
                N0 n0M = O0.m();
                String strP = f8.p().p();
                if (n0M.f23476I) {
                    n0M.f();
                    n0M.f23476I = false;
                }
                O0.n((O0) n0M.f23475H, strP);
                O0 o4 = (O0) n0M.d();
                if (l4M.f23476I) {
                    l4M.f();
                    l4M.f23476I = false;
                }
                C2765m0.K((C2765m0) l4M.f23475H, o4);
            }
        }
        return l4M;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2750k1
    public L4 d(Context context, View view, Activity activity) {
        H1 h8 = f23953B;
        if (h8 != null && h8.f23541d) {
            h8.f23539b = System.currentTimeMillis();
        }
        L4 l4M = C2765m0.M();
        l4M.i(this.f23957u);
        l(j(context, false), l4M, view, activity, false);
        return l4M;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2750k1
    public final B1 e(MotionEvent motionEvent) throws C2845w1 {
        Method methodC = AbstractC2750k1.f23888t.c("CkzLLxV5zSb+jeaEDnt9Q3eBrpVMtqnw6wBKNocN2YzoApdHEqHkRi4x0VOMDtd4", "nVNp1WYfnkUt4CgZM9ftj8WNocg8ldySiFlqCJaJia4=");
        if (methodC == null || motionEvent == null) {
            throw new C2845w1();
        }
        try {
            return new B1((String) methodC.invoke(null, motionEvent, this.f23907s));
        } catch (IllegalAccessException | InvocationTargetException e8) {
            throw new C2845w1(e8);
        }
    }

    public final synchronized void g(A1 a8, L4 l4) {
        MotionEvent motionEvent;
        try {
            try {
                B1 b1K = k(a8, this.f23889a, this.f23907s);
                Long l8 = b1K.f23454a;
                if (l8 != null) {
                    long jLongValue = l8.longValue();
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.m0((C2765m0) l4.f23475H, jLongValue);
                }
                Long l9 = b1K.f23455b;
                if (l9 != null) {
                    long jLongValue2 = l9.longValue();
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.n0((C2765m0) l4.f23475H, jLongValue2);
                }
                Long l10 = b1K.f23456c;
                if (l10 != null) {
                    long jLongValue3 = l10.longValue();
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.o0((C2765m0) l4.f23475H, jLongValue3);
                }
                if (this.f23906r) {
                    Long l11 = b1K.f23457d;
                    if (l11 != null) {
                        long jLongValue4 = l11.longValue();
                        if (l4.f23476I) {
                            l4.f();
                            l4.f23476I = false;
                        }
                        C2765m0.n((C2765m0) l4.f23475H, jLongValue4);
                    }
                    Long l12 = b1K.f23458e;
                    if (l12 != null) {
                        long jLongValue5 = l12.longValue();
                        if (l4.f23476I) {
                            l4.f();
                            l4.f23476I = false;
                        }
                        C2765m0.o((C2765m0) l4.f23475H, jLongValue5);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        } catch (C2845w1 unused) {
        }
        C2692d c2692dM = C2811s.m();
        if (this.f23891c > 0) {
            DisplayMetrics displayMetrics = this.f23907s;
            char[] cArr = C1.f23478a;
            if (displayMetrics != null && displayMetrics.density != 0.0f) {
                long jA = C1.a(this.f23898j, displayMetrics);
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.y((C2811s) c2692dM.f23475H, jA);
                long jA2 = C1.a(this.f23903o - this.f23901m, this.f23907s);
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.z((C2811s) c2692dM.f23475H, jA2);
                long jA3 = C1.a(this.f23904p - this.f23902n, this.f23907s);
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.A((C2811s) c2692dM.f23475H, jA3);
                long jA4 = C1.a(this.f23901m, this.f23907s);
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.D((C2811s) c2692dM.f23475H, jA4);
                long jA5 = C1.a(this.f23902n, this.f23907s);
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.E((C2811s) c2692dM.f23475H, jA5);
                if (this.f23906r && (motionEvent = this.f23889a) != null) {
                    long jA6 = C1.a(((this.f23901m - this.f23903o) + motionEvent.getRawX()) - this.f23889a.getX(), this.f23907s);
                    if (jA6 != 0) {
                        if (c2692dM.f23476I) {
                            c2692dM.f();
                            c2692dM.f23476I = false;
                        }
                        C2811s.B((C2811s) c2692dM.f23475H, jA6);
                    }
                    long jA7 = C1.a(((this.f23902n - this.f23904p) + this.f23889a.getRawY()) - this.f23889a.getY(), this.f23907s);
                    if (jA7 != 0) {
                        if (c2692dM.f23476I) {
                            c2692dM.f();
                            c2692dM.f23476I = false;
                        }
                        C2811s.C((C2811s) c2692dM.f23475H, jA7);
                    }
                }
            }
        }
        try {
            B1 b1E = e(this.f23889a);
            Long l13 = b1E.f23454a;
            if (l13 != null) {
                long jLongValue6 = l13.longValue();
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.n((C2811s) c2692dM.f23475H, jLongValue6);
            }
            Long l14 = b1E.f23455b;
            if (l14 != null) {
                long jLongValue7 = l14.longValue();
                if (c2692dM.f23476I) {
                    c2692dM.f();
                    c2692dM.f23476I = false;
                }
                C2811s.o((C2811s) c2692dM.f23475H, jLongValue7);
            }
            long jLongValue8 = b1E.f23456c.longValue();
            if (c2692dM.f23476I) {
                c2692dM.f();
                c2692dM.f23476I = false;
            }
            C2811s.u((C2811s) c2692dM.f23475H, jLongValue8);
            if (this.f23906r) {
                Long l15 = b1E.f23458e;
                if (l15 != null) {
                    long jLongValue9 = l15.longValue();
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.p((C2811s) c2692dM.f23475H, jLongValue9);
                }
                Long l16 = b1E.f23457d;
                if (l16 != null) {
                    long jLongValue10 = l16.longValue();
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.s((C2811s) c2692dM.f23475H, jLongValue10);
                }
                Long l17 = b1E.f23459f;
                if (l17 != null) {
                    int i8 = l17.longValue() != 0 ? 2 : 1;
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.F((C2811s) c2692dM.f23475H, i8);
                }
                long j8 = this.f23892d;
                if (j8 > 0) {
                    DisplayMetrics displayMetrics2 = this.f23907s;
                    char[] cArr2 = C1.f23478a;
                    Long lValueOf = (displayMetrics2 == null || displayMetrics2.density == 0.0f) ? null : Long.valueOf(Math.round(this.f23897i / j8));
                    if (lValueOf != null) {
                        long jLongValue11 = lValueOf.longValue();
                        if (c2692dM.f23476I) {
                            c2692dM.f();
                            c2692dM.f23476I = false;
                        }
                        C2811s.q((C2811s) c2692dM.f23475H, jLongValue11);
                    } else {
                        if (c2692dM.f23476I) {
                            c2692dM.f();
                            c2692dM.f23476I = false;
                        }
                        C2811s.r((C2811s) c2692dM.f23475H);
                    }
                    long jRound = Math.round(this.f23896h / this.f23892d);
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.t((C2811s) c2692dM.f23475H, jRound);
                }
                Long l18 = b1E.f23462i;
                if (l18 != null) {
                    long jLongValue12 = l18.longValue();
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.w((C2811s) c2692dM.f23475H, jLongValue12);
                }
                Long l19 = b1E.f23463j;
                if (l19 != null) {
                    long jLongValue13 = l19.longValue();
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.v((C2811s) c2692dM.f23475H, jLongValue13);
                }
                Long l20 = b1E.f23464k;
                if (l20 != null) {
                    int i9 = l20.longValue() != 0 ? 2 : 1;
                    if (c2692dM.f23476I) {
                        c2692dM.f();
                        c2692dM.f23476I = false;
                    }
                    C2811s.G((C2811s) c2692dM.f23475H, i9);
                }
            }
        } catch (C2845w1 unused2) {
        }
        long j9 = this.f23895g;
        if (j9 > 0) {
            if (c2692dM.f23476I) {
                c2692dM.f();
                c2692dM.f23476I = false;
            }
            C2811s.x((C2811s) c2692dM.f23475H, j9);
        }
        C2811s c2811s = (C2811s) c2692dM.d();
        if (l4.f23476I) {
            l4.f();
            l4.f23476I = false;
        }
        C2765m0.A((C2765m0) l4.f23475H, c2811s);
        long j10 = this.f23891c;
        if (j10 > 0) {
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.r((C2765m0) l4.f23475H, j10);
        }
        long j11 = this.f23892d;
        if (j11 > 0) {
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.q((C2765m0) l4.f23475H, j11);
        }
        long j12 = this.f23893e;
        if (j12 > 0) {
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.p((C2765m0) l4.f23475H, j12);
        }
        long j13 = this.f23894f;
        if (j13 > 0) {
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.s((C2765m0) l4.f23475H, j13);
        }
        try {
            int size = this.f23890b.size() - 1;
            if (size > 0) {
                if (l4.f23476I) {
                    l4.f();
                    l4.f23476I = false;
                }
                C2765m0.C((C2765m0) l4.f23475H);
                for (int i10 = 0; i10 < size; i10++) {
                    B1 b1K2 = k(AbstractC2750k1.f23888t, (MotionEvent) this.f23890b.get(i10), this.f23907s);
                    C2692d c2692dM2 = C2811s.m();
                    long jLongValue14 = b1K2.f23454a.longValue();
                    if (c2692dM2.f23476I) {
                        c2692dM2.f();
                        c2692dM2.f23476I = false;
                    }
                    C2811s.n((C2811s) c2692dM2.f23475H, jLongValue14);
                    long jLongValue15 = b1K2.f23455b.longValue();
                    if (c2692dM2.f23476I) {
                        c2692dM2.f();
                        c2692dM2.f23476I = false;
                    }
                    C2811s.o((C2811s) c2692dM2.f23475H, jLongValue15);
                    C2811s c2811s2 = (C2811s) c2692dM2.d();
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.B((C2765m0) l4.f23475H, c2811s2);
                }
            }
        } catch (C2845w1 unused3) {
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.C((C2765m0) l4.f23475H);
        }
    }

    public abstract ArrayList h(A1 a8, Context context, L4 l4, F2 f8);

    public void i(A1 a8, Context context, L4 l4, F2 f8) {
        if (a8.f23426b == null) {
            return;
        }
        n(h(a8, context, l4, f8));
    }

    public final void l(A1 a8, L4 l4, View view, Activity activity, boolean z7) {
        List listAsList;
        if (a8.f23440p) {
            g(a8, l4);
            ArrayList arrayList = new ArrayList();
            if (a8.f23426b != null) {
                int iA = a8.a();
                arrayList.add(new O1(a8, l4));
                arrayList.add(new R1(a8, l4, iA));
                arrayList.add(new N1(a8, l4, f23956z, iA));
                arrayList.add(new M1(a8, l4, iA));
                arrayList.add(new J1(a8, l4, iA, 5));
                arrayList.add(new J1(a8, l4, iA, 6));
                arrayList.add(new P1(a8, l4, iA));
                arrayList.add(new J1(a8, l4, iA, 2));
                arrayList.add(new J1(a8, l4, iA, 9));
                arrayList.add(new J1(a8, l4, iA, 1));
                arrayList.add(new J1(a8, l4, iA, 8));
                arrayList.add(new S1(a8, l4, iA, new Throwable().getStackTrace()));
                arrayList.add(new S1(a8, l4, iA, view));
                arrayList.add(new T1(a8, l4, iA));
                C0325y c0325y = AbstractC2759l2.f23931h;
                C2727h2 c2727h2 = C2727h2.f23833d;
                if (((Boolean) c2727h2.f23836c.a(c0325y)).booleanValue()) {
                    arrayList.add(new I1(a8, l4, iA, view, activity));
                }
                C0325y c0325y2 = AbstractC2759l2.f23945v;
                SharedPreferencesOnSharedPreferenceChangeListenerC2751k2 sharedPreferencesOnSharedPreferenceChangeListenerC2751k2 = c2727h2.f23836c;
                if (((Boolean) sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.a(c0325y2)).booleanValue()) {
                    arrayList.add(new J1(a8, l4, iA, 0));
                }
                if (!z7) {
                    try {
                        if (((Boolean) sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.a(AbstractC2759l2.f23934k)).booleanValue()) {
                            arrayList.add(new I1(a8, l4, iA, this.f23959w, view));
                        }
                    } catch (IllegalStateException unused) {
                    }
                } else if (((Boolean) sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.a(AbstractC2759l2.f23933j)).booleanValue()) {
                    arrayList.add(new V1(a8, l4, iA, this.f23958v));
                }
            }
            listAsList = arrayList;
        } else {
            l4.g(16384L);
            listAsList = Arrays.asList(new O1(a8, l4));
        }
        n(listAsList);
    }

    public AbstractC2766m1(Context context, int i8) {
        super(context);
        this.f23959w = new HashMap();
        this.f23957u = "h.3.2.2/n.android.3.2.2";
    }
}
