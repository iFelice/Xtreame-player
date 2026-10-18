package com.google.android.gms.internal.pal;

import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2734i1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConditionVariable f23846c = new ConditionVariable();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile P0.j f23847d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile Random f23848e = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A1 f23849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Boolean f23850b;

    public C2734i1(A1 a8) {
        this.f23849a = a8;
        a8.f23426b.execute(new Y0(this, 1));
    }

    public final void a(int i8, int i9, long j8, String str, Exception exc) {
        try {
            f23846c.block();
            if (!this.f23850b.booleanValue() || f23847d == null) {
                return;
            }
            U0 u0M = U1.m();
            String packageName = this.f23849a.f23425a.getPackageName();
            if (u0M.f23476I) {
                u0M.f();
                u0M.f23476I = false;
            }
            U1.r((U1) u0M.f23475H, packageName);
            if (u0M.f23476I) {
                u0M.f();
                u0M.f23476I = false;
            }
            U1.n((U1) u0M.f23475H, j8);
            if (str != null) {
                if (u0M.f23476I) {
                    u0M.f();
                    u0M.f23476I = false;
                }
                U1.q((U1) u0M.f23475H, str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                String string = stringWriter.toString();
                if (u0M.f23476I) {
                    u0M.f();
                    u0M.f23476I = false;
                }
                U1.o((U1) u0M.f23475H, string);
                String name = exc.getClass().getName();
                if (u0M.f23476I) {
                    u0M.f();
                    u0M.f23476I = false;
                }
                U1.p((U1) u0M.f23475H, name);
            }
            P0.j jVar = f23847d;
            byte[] bArrB = ((U1) u0M.d()).b();
            jVar.getClass();
            p016c.g gVar = new p016c.g(jVar, bArrB, 12);
            gVar.f10555I = i8;
            if (i9 != -1) {
                gVar.f10554H = i9;
            }
            gVar.n();
        } catch (Exception unused) {
        }
    }
}
