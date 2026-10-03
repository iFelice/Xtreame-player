package com.google.firebase.datatransport;

import C0.C0082g;
import M4.b;
import M4.d;
import M4.g;
import R2.e;
import S2.a;
import U2.q;
import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class TransportRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    private static /* synthetic */ e lambda$getComponents$0(b bVar) {
        q.b((Context) bVar.get());
        return q.a().c(a.f6399f);
    }

    private static /* synthetic */ e lambda$getComponents$1(b bVar) {
        q.b((Context) bVar.get());
        return q.a().c(a.f6399f);
    }

    private static /* synthetic */ e lambda$getComponents$2(b bVar) {
        q.b((Context) bVar.get());
        return q.a().c(a.f6398e);
    }

    public List<M4.a> getComponents() {
        M4.a aVarD = M4.a.d(e.class);
        aVarD.f4798b = LIBRARY_NAME;
        aVarD.a(d.a(Context.class));
        aVarD.f4803g = new C0082g();
        M4.a aVarB = aVarD.b();
        M4.a aVarC = M4.a.c(new g(O4.a.class, e.class));
        aVarC.a(d.a(Context.class));
        aVarC.f4803g = new C0082g();
        M4.a aVarB2 = aVarC.b();
        M4.a aVarC2 = M4.a.c(new g(O4.b.class, e.class));
        aVarC2.a(d.a(Context.class));
        aVarC2.f4803g = new C0082g();
        return Arrays.asList(aVarB, aVarB2, aVarC2.b(), k.A(LIBRARY_NAME, "18.2.0"));
    }
}
