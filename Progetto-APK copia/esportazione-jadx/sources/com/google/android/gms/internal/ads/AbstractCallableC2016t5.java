package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.t5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCallableC2016t5 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V4 f21032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final V3 f21035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Method f21036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f21037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f21038g;

    public AbstractCallableC2016t5(V4 v5, String str, String str2, V3 v7, int i8, int i9) {
        this.f21032a = v5;
        this.f21033b = str;
        this.f21034c = str2;
        this.f21035d = v7;
        this.f21037f = i8;
        this.f21038g = i9;
    }

    public abstract void a();

    public void b() {
        int i8;
        V4 v5 = this.f21032a;
        try {
            long jNanoTime = System.nanoTime();
            Method methodC = v5.c(this.f21033b, this.f21034c);
            this.f21036e = methodC;
            if (methodC == null) {
                return;
            }
            a();
            D4 d6 = v5.f16950l;
            if (d6 == null || (i8 = this.f21037f) == Integer.MIN_VALUE) {
                return;
            }
            d6.a(this.f21038g, i8, (System.nanoTime() - jNanoTime) / 1000, null, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        b();
        return null;
    }
}
