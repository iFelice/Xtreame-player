package com.google.firebase;

import G4.b;
import J6.AbstractC0214m;
import L4.c;
import M4.a;
import M4.d;
import M4.g;
import androidx.annotation.Keep;
import java.util.List;
import java.util.concurrent.Executor;
import p027d2.v;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class FirebaseCommonKtxRegistrar {
    public List<a> getComponents() {
        a aVarC = a.c(new g(L4.a.class, AbstractC0214m.class));
        aVarC.a(new d(new g(L4.a.class, Executor.class), 1, 0));
        aVarC.f4803g = b.f3405G;
        a aVarB = aVarC.b();
        a aVarC2 = a.c(new g(c.class, AbstractC0214m.class));
        aVarC2.a(new d(new g(c.class, Executor.class), 1, 0));
        aVarC2.f4803g = b.f3406H;
        a aVarB2 = aVarC2.b();
        a aVarC3 = a.c(new g(L4.b.class, AbstractC0214m.class));
        aVarC3.a(new d(new g(L4.b.class, Executor.class), 1, 0));
        aVarC3.f4803g = b.f3407I;
        a aVarB3 = aVarC3.b();
        a aVarC4 = a.c(new g(L4.d.class, AbstractC0214m.class));
        aVarC4.a(new d(new g(L4.d.class, Executor.class), 1, 0));
        aVarC4.f4803g = b.f3408J;
        return v.p(aVarB, aVarB2, aVarB3, aVarC4.b());
    }
}
