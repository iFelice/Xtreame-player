package com.google.android.gms.internal.pal;

import android.os.Handler;
import dalvik.system.DexClassLoader;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Y0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23696G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f23697H;

    public /* synthetic */ Y0(Object obj, int i8) {
        this.f23696G = i8;
        this.f23697H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        CountDownLatch countDownLatch;
        switch (this.f23696G) {
            case 0:
                ((AbstractC2670a1) this.f23697H).c();
                return;
            case 1:
                if (((C2734i1) this.f23697H).f23850b != null) {
                    return;
                }
                synchronized (C2734i1.f23846c) {
                    if (((C2734i1) this.f23697H).f23850b != null) {
                        return;
                    }
                    boolean z7 = false;
                    try {
                        zBooleanValue = ((Boolean) AbstractC2759l2.f23928e.c()).booleanValue();
                        break;
                    } catch (IllegalStateException unused) {
                        zBooleanValue = false;
                    }
                    if (zBooleanValue) {
                        try {
                            C2734i1.f23847d = P0.j.c(((C2734i1) this.f23697H).f23849a.f23425a);
                            break;
                        } catch (Throwable unused2) {
                        }
                    }
                    z7 = zBooleanValue;
                    ((C2734i1) this.f23697H).f23850b = Boolean.valueOf(z7);
                    C2734i1.f23846c.open();
                    return;
                }
            case 2:
                F1 f8 = (F1) this.f23697H;
                Handler handler = F1.f23509S;
                f8.c();
                return;
            default:
                X1 x7 = (X1) this.f23697H;
                try {
                    try {
                        A1 a8 = x7.f23687a;
                        DexClassLoader dexClassLoader = a8.f23427c;
                        byte[] bArr = a8.f23429e;
                        String str = x7.f23688b;
                        a8.f23428d.getClass();
                        Class<?> clsLoadClass = dexClassLoader.loadClass(new String(C2829u1.b(bArr, str), "UTF-8"));
                        if (clsLoadClass == null) {
                            countDownLatch = x7.f23692f;
                        } else {
                            A1 a9 = x7.f23687a;
                            byte[] bArr2 = a9.f23429e;
                            String str2 = x7.f23689c;
                            a9.f23428d.getClass();
                            x7.f23690d = clsLoadClass.getMethod(new String(C2829u1.b(bArr2, str2), "UTF-8"), x7.f23691e);
                            countDownLatch = x7.f23690d == null ? x7.f23692f : x7.f23692f;
                        }
                    } catch (NullPointerException unused3) {
                        countDownLatch = x7.f23692f;
                    } catch (Throwable th) {
                        x7.f23692f.countDown();
                        throw th;
                    }
                } catch (C2821t1 | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException unused4) {
                }
                countDownLatch.countDown();
                return;
        }
    }
}
