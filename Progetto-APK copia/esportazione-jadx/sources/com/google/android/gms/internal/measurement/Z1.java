package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p132r.f f23064a = new p132r.f(0);

    public static synchronized void a() {
        p132r.f fVar = f23064a;
        Iterator it = ((p132r.e) fVar.values()).iterator();
        if (it.hasNext()) {
            Z1 z7 = (Z1) it.next();
            z7.getClass();
            z7.getClass();
            throw null;
        }
        fVar.clear();
    }
}
