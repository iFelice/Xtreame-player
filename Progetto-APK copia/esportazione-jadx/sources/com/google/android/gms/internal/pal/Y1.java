package com.google.android.gms.internal.pal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public abstract class Y1 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A1 f23698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f23700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final L4 f23701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Method f23702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f23703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f23704g;

    public Y1(A1 a8, String str, String str2, L4 l4, int i8, int i9) {
        this.f23698a = a8;
        this.f23699b = str;
        this.f23700c = str2;
        this.f23701d = l4;
        this.f23703f = i8;
        this.f23704g = i9;
    }

    public abstract void a();

    public void b() {
        int i8;
        A1 a8 = this.f23698a;
        try {
            long jNanoTime = System.nanoTime();
            Method methodC = a8.c(this.f23699b, this.f23700c);
            this.f23702e = methodC;
            if (methodC == null) {
                return;
            }
            a();
            C2734i1 c2734i1 = a8.f23436l;
            if (c2734i1 == null || (i8 = this.f23703f) == Integer.MIN_VALUE) {
                return;
            }
            c2734i1.a(this.f23704g, i8, (System.nanoTime() - jNanoTime) / 1000, null, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        b();
        return null;
    }
}
