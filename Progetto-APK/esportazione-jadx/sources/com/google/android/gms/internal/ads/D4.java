package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class D4 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConditionVariable f12773c = new ConditionVariable();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile Gy f12774d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile Random f12775e = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V4 f12776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Boolean f12777b;

    public D4(V4 v5) {
        this.f12776a = v5;
        v5.f16940b.execute(new RunnableC0878Pf(this, 2));
    }

    public final void a(int i8, int i9, long j8, String str, Exception exc) {
        try {
            f12773c.block();
            if (!this.f12777b.booleanValue() || f12774d == null) {
                return;
            }
            P3 p3A = T3.A();
            String packageName = this.f12776a.f16939a.getPackageName();
            p3A.d();
            T3.G((T3) p3A.f20255H, packageName);
            p3A.d();
            T3.B((T3) p3A.f20255H, j8);
            if (str != null) {
                p3A.d();
                T3.E((T3) p3A.f20255H, str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                String string = stringWriter.toString();
                p3A.d();
                T3.C((T3) p3A.f20255H, string);
                String name = exc.getClass().getName();
                p3A.d();
                T3.D((T3) p3A.f20255H, name);
            }
            Gy gy = f12774d;
            byte[] bArrD = ((T3) p3A.b()).d();
            gy.getClass();
            p016c.g gVar = new p016c.g(gy, bArrD, 11);
            gVar.f10555I = i8;
            if (i9 != -1) {
                gVar.f10554H = i9;
            }
            gVar.n();
        } catch (Exception unused) {
        }
    }
}
