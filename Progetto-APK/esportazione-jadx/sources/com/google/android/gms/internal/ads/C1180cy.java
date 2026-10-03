package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1180cy {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile int f18276e = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f18278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p052g4.h f18279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18280d;

    public C1180cy(Context context, ExecutorService executorService, p052g4.r rVar, boolean z7) {
        this.f18277a = context;
        this.f18278b = executorService;
        this.f18279c = rVar;
        this.f18280d = z7;
    }

    public static C1180cy a(Context context, ExecutorService executorService, boolean z7) {
        p052g4.i iVar = new p052g4.i();
        if (z7) {
            executorService.execute(new RunnableC1170co(15, context, iVar));
        } else {
            executorService.execute(new RunnableC1026Zn(iVar, 16));
        }
        return new C1180cy(context, executorService, iVar.f25345a, z7);
    }

    public final void b(int i8, long j8, Exception exc) {
        d(i8, j8, exc, null, null);
    }

    public final void c(int i8, long j8) {
        d(i8, j8, null, null, null);
    }

    public final p052g4.r d(int i8, long j8, Exception exc, String str, String str2) {
        if (!this.f18280d) {
            return this.f18279c.d(this.f18278b, new p021c4.A(25));
        }
        Context context = this.f18277a;
        P3 p3A = T3.A();
        String packageName = context.getPackageName();
        p3A.d();
        T3.G((T3) p3A.f20255H, packageName);
        p3A.d();
        T3.B((T3) p3A.f20255H, j8);
        int i9 = f18276e;
        p3A.d();
        T3.H((T3) p3A.f20255H, i9);
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
        if (str2 != null) {
            p3A.d();
            T3.E((T3) p3A.f20255H, str2);
        }
        if (str != null) {
            p3A.d();
            T3.F((T3) p3A.f20255H, str);
        }
        return this.f18279c.d(this.f18278b, new K.k(p3A, i8, 11));
    }
}
