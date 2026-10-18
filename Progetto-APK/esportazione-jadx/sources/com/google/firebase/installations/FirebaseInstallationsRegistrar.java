package com.google.firebase.installations;

import A0.O;
import B0.K0;
import C0.C0082g;
import M4.a;
import M4.b;
import M4.d;
import M4.g;
import N4.e;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p045f5.c;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseInstallationsRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    private static c lambda$getComponents$0(b bVar) {
        O.I(bVar.get());
        bVar.a();
        new e((Executor) bVar.c());
        throw null;
    }

    public List<a> getComponents() {
        a aVarD = a.d(c.class);
        aVarD.f4798b = LIBRARY_NAME;
        aVarD.a(d.a(G4.a.class));
        aVarD.a(new d(0, 1, U4.a.class));
        aVarD.a(new d(new g(L4.a.class, ExecutorService.class), 1, 0));
        aVarD.a(new d(new g(L4.b.class, Executor.class), 1, 0));
        aVarD.f4803g = new C0082g();
        a aVarB = aVarD.b();
        U4.b bVar = new U4.b();
        a aVarD2 = a.d(U4.b.class);
        aVarD2.f4802f = 1;
        aVarD2.f4803g = new K0(bVar);
        return Arrays.asList(aVarB, aVarD2.b(), k.A(LIBRARY_NAME, "17.2.0"));
    }
}
