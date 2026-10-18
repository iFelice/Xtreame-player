package com.google.android.gms.internal.pal;

import android.provider.Settings;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class J1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f23563h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J1(A1 a8, L4 l4, int i8, int i9) {
        super(a8, "w1mRpvC09hSNbQ10UvFXagm2P4TWR/T2KztJ+buPFQZnRnjxpdFVScAm9trUP6jM", "1tXSieficgPhud4YihA+CzunTIb+yA05iyb1BkAzMoc=", l4, i8, 89);
        this.f23563h = i9;
        switch (i9) {
            case 1:
                super(a8, "6vt+8E5GP5AwoxquDM0Y7lVJzS23/VCjNo5D8xB8rgAaaF6IhToGZhlIAUkgigHl", "jx9F7EAIAhvEI8G+/hWsHBitt0z+K8moFRn7/w45eYc=", l4, i8, 49);
                break;
            case 2:
                super(a8, "C6OPKdOx6rUdfDdOmaUimt8yM1FrOv7bKCITdJ0Uo74WwXDfvXouJ4oz4kHBjTSk", "dTWRHHPyYq/fNXOTAS/wjayGzv2SlrSwyDcB+vX+h5Q=", l4, i8, 5);
                break;
            case 3:
                super(a8, "ysEnh8zkgcN8WwINs5FP7vGybZW2TtVSX36HO6emvdUrcCkVbC9hrF5Pe5ZSZx3i", "3LpdW89cIASEFv5WvS5ZDEWsiVGQitP33SL3WZgJ6zE=", l4, i8, 24);
                break;
            case 4:
                super(a8, "AZwRbSS9Tjg/vY6NNyDfd3mU35mZBbQduzRpliDRt3qUNjlKylmreq0JkiCiO6dF", "lsjUo68NMWNsPUz4dBIEYtWAZHRXaEljQLBgt48XQs4=", l4, i8, 76);
                break;
            case 5:
                super(a8, "Ls+ZUCEdSGy+47NpfWc5WNy2WCTB2lhysvWY8PCvkdyqiw8HkO3XVSxwPIsY4tvv", "1yJaDnXEM3em29nHb3kYjIOvpW6Mkce5Fji3syGd7T0=", l4, i8, 12);
                break;
            case 6:
                super(a8, "vkfQoQl1Rxr7/uvSSRcOrQI31A6S/KAPW33nf5P0hYbuVy6BLjHzjUB4OEnneXoS", "SfaCE2ReDSQ3+KDKcvA6SSrX7nuWYsM/FN3ZFmlH0dA=", l4, i8, 3);
                break;
            case 7:
                super(a8, "WepZYnT/MXyJE28LKN26NT6D3mAA2J2spDFApE1ixrQxTNXRg7wshW7BC/EU90LT", "sjYkfzJTuYKxh1jvZaP9n5dx9JGmzJotOUC/vdvgi4M=", l4, i8, 73);
                break;
            case 8:
                super(a8, "sdX902x/AS9226TxUXaqji9wP1uHqRQA8nkg2YMN1TcruTTaw008l9z5V3jZGjLO", "z3i9M2k4RJ/f7GArNBcGbUcpUFpuRmLev6S20UO7Vqs=", l4, i8, 51);
                break;
            case 9:
                super(a8, "6CWPidOWJZFxRWI8V7yi3OiMbOhIWZX/jTayTGRwqCM0W8dtKHQOPe60TuQicfhG", "gYPijpNio6OwLgbzbH6IuWSNtvp7bCV5UMbKZJCVNdg=", l4, i8, 48);
                break;
            default:
                break;
        }
    }

    private final void c() {
        String str = (String) this.f23702e.invoke(null, new Object[0]);
        synchronized (this.f23701d) {
            L4 l4 = this.f23701d;
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.Q((C2765m0) l4.f23475H, str);
        }
    }

    private final void d() {
        L4 l4 = this.f23701d;
        if (l4.f23476I) {
            l4.f();
            l4.f23476I = false;
        }
        C2765m0.i0((C2765m0) l4.f23475H, -1L);
        L4 l8 = this.f23701d;
        if (l8.f23476I) {
            l8.f();
            l8.f23476I = false;
        }
        C2765m0.j0((C2765m0) l8.f23475H, -1L);
        int[] iArr = (int[]) this.f23702e.invoke(null, this.f23698a.f23425a);
        synchronized (this.f23701d) {
            try {
                L4 l9 = this.f23701d;
                long j8 = iArr[0];
                if (l9.f23476I) {
                    l9.f();
                    l9.f23476I = false;
                }
                C2765m0.i0((C2765m0) l9.f23475H, j8);
                L4 l10 = this.f23701d;
                long j9 = iArr[1];
                if (l10.f23476I) {
                    l10.f();
                    l10.f23476I = false;
                }
                C2765m0.j0((C2765m0) l10.f23475H, j9);
                int i8 = iArr[2];
                if (i8 != Integer.MIN_VALUE) {
                    L4 l11 = this.f23701d;
                    long j10 = i8;
                    if (l11.f23476I) {
                        l11.f();
                        l11.f23476I = false;
                    }
                    C2765m0.E((C2765m0) l11.f23475H, j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void e() {
        if (this.f23698a.f23437m) {
            h();
            return;
        }
        synchronized (this.f23701d) {
            this.f23701d.j((String) this.f23702e.invoke(null, this.f23698a.f23425a));
        }
    }

    private final void f() {
        Boolean bool = (Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23936m);
        bool.getClass();
        String str = (String) this.f23702e.invoke(null, this.f23698a.f23425a, bool);
        C2837v1 c2837v1 = new C2837v1();
        c2837v1.f24039a = -1L;
        c2837v1.f24040b = -1L;
        HashMap mapA = AbstractC2686c1.a(str);
        if (mapA != null) {
            c2837v1.f24039a = ((Long) mapA.get(0)).longValue();
            c2837v1.f24040b = ((Long) mapA.get(1)).longValue();
        }
        synchronized (this.f23701d) {
            L4 l4 = this.f23701d;
            long j8 = c2837v1.f24039a;
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.h0((C2765m0) l4.f23475H, j8);
            L4 l8 = this.f23701d;
            long j9 = c2837v1.f24040b;
            if (l8.f23476I) {
                l8.f();
                l8.f23476I = false;
            }
            C2765m0.F((C2765m0) l8.f23475H, j9);
        }
    }

    private final void g() {
        synchronized (this.f23701d) {
            String str = (String) this.f23702e.invoke(null, new Object[0]);
            C2853x1 c2853x1 = new C2853x1();
            HashMap mapA = AbstractC2686c1.a(str);
            if (mapA != null) {
                c2853x1.f24060a = (Long) mapA.get(0);
                c2853x1.f24061b = (Long) mapA.get(1);
            }
            L4 l4 = this.f23701d;
            long jLongValue = c2853x1.f24060a.longValue();
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.x((C2765m0) l4.f23475H, jLongValue);
            L4 l8 = this.f23701d;
            long jLongValue2 = c2853x1.f24061b.longValue();
            if (l8.f23476I) {
                l8.f();
                l8.f23476I = false;
            }
            C2765m0.y((C2765m0) l8.f23475H, jLongValue2);
        }
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() throws InvocationTargetException {
        int i8 = 1;
        switch (this.f23563h) {
            case 0:
                c();
                return;
            case 1:
                L4 l4 = this.f23701d;
                if (l4.f23476I) {
                    l4.f();
                    l4.f23476I = false;
                }
                C2765m0.X((C2765m0) l4.f23475H, 3);
                try {
                    if (true == ((Boolean) this.f23702e.invoke(null, this.f23698a.f23425a)).booleanValue()) {
                        i8 = 2;
                    }
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.X((C2765m0) l4.f23475H, i8);
                    return;
                } catch (InvocationTargetException e8) {
                    if (!(e8.getTargetException() instanceof Settings.SettingNotFoundException)) {
                        throw e8;
                    }
                    return;
                }
            case 2:
                d();
                return;
            case 3:
                e();
                return;
            case 4:
                i8 = true == ((Boolean) this.f23702e.invoke(null, this.f23698a.f23425a)).booleanValue() ? 2 : 1;
                L4 l8 = this.f23701d;
                if (l8.f23476I) {
                    l8.f();
                    l8.f23476I = false;
                }
                C2765m0.a0((C2765m0) l8.f23475H, i8);
                return;
            case 5:
                L4 l9 = this.f23701d;
                if (l9.f23476I) {
                    l9.f();
                    l9.f23476I = false;
                }
                C2765m0.l0((C2765m0) l9.f23475H, -1L);
                long jLongValue = ((Long) this.f23702e.invoke(null, this.f23698a.f23425a)).longValue();
                if (l9.f23476I) {
                    l9.f();
                    l9.f23476I = false;
                }
                C2765m0.l0((C2765m0) l9.f23475H, jLongValue);
                return;
            case 6:
                f();
                return;
            case 7:
                L4 l10 = this.f23701d;
                try {
                    if (true == ((Boolean) this.f23702e.invoke(null, this.f23698a.f23425a)).booleanValue()) {
                        i8 = 2;
                    }
                    if (l10.f23476I) {
                        l10.f();
                        l10.f23476I = false;
                    }
                    C2765m0.Z((C2765m0) l10.f23475H, i8);
                    return;
                } catch (InvocationTargetException unused) {
                    if (l10.f23476I) {
                        l10.f();
                        l10.f23476I = false;
                    }
                    C2765m0.Z((C2765m0) l10.f23475H, 3);
                    return;
                }
            case 8:
                g();
                return;
            default:
                this.f23701d.h(3);
                boolean zBooleanValue = ((Boolean) this.f23702e.invoke(null, this.f23698a.f23425a)).booleanValue();
                synchronized (this.f23701d) {
                    try {
                        if (zBooleanValue) {
                            this.f23701d.h(2);
                        } else {
                            this.f23701d.h(1);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void b() {
        switch (this.f23563h) {
            case 3:
                A1 a8 = this.f23698a;
                if (a8.f23440p) {
                    super.b();
                } else if (a8.f23437m) {
                    h();
                }
                break;
            default:
                super.b();
                break;
        }
    }

    @Override // com.google.android.gms.internal.pal.Y1, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        switch (this.f23563h) {
            case 3:
                b();
                break;
            default:
                b();
                break;
        }
        return null;
    }

    public final void h() {
        Future future;
        A1 a8 = this.f23698a;
        p075j3.b bVar = null;
        if (a8.f23431g) {
            if (a8.f23430f == null && (future = a8.f23432h) != null) {
                try {
                    future.get(2000L, TimeUnit.MILLISECONDS);
                    a8.f23432h = null;
                } catch (InterruptedException | ExecutionException unused) {
                } catch (TimeoutException unused2) {
                    a8.f23432h.cancel(true);
                }
            }
            bVar = a8.f23430f;
        }
        if (bVar == null) {
            return;
        }
        try {
            p075j3.a aVarF = bVar.f();
            String strB = C1.b(aVarF.f25695a);
            if (strB != null) {
                synchronized (this.f23701d) {
                    this.f23701d.j(strB);
                    L4 l4 = this.f23701d;
                    boolean z7 = aVarF.f25696b;
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.S((C2765m0) l4.f23475H, z7);
                    L4 l8 = this.f23701d;
                    if (l8.f23476I) {
                        l8.f();
                        l8.f23476I = false;
                    }
                    C2765m0.b0((C2765m0) l8.f23475H);
                }
            }
        } catch (IOException unused3) {
        }
    }
}
