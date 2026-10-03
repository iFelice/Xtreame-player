package com.google.firebase.inappmessaging;

import A0.O;
import B0.K0;
import L4.a;
import L4.b;
import L4.c;
import M4.d;
import M4.g;
import R2.e;
import V4.A;
import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseInAppMessagingRegistrar {
    private static final String LIBRARY_NAME = "fire-fiam";
    private g backgroundExecutor = new g(a.class, Executor.class);
    private g blockingExecutor = new g(b.class, Executor.class);
    private g lightWeightExecutor = new g(c.class, Executor.class);
    private g legacyTransportFactory = new g(O4.a.class, e.class);

    private A providesFirebaseInAppMessaging(M4.b bVar) {
        O.I(bVar.get());
        bVar.b();
        O.I(bVar.get());
        throw null;
    }

    @Keep
    public List<M4.a> getComponents() {
        M4.a aVarD = M4.a.d(A.class);
        aVarD.f4798b = LIBRARY_NAME;
        aVarD.a(d.a(Context.class));
        aVarD.a(d.a(p045f5.c.class));
        aVarD.a(d.a(G4.a.class));
        aVarD.a(d.a(H4.a.class));
        aVarD.a(new d(0, 2, J4.a.class));
        aVarD.a(new d(this.legacyTransportFactory, 1, 0));
        aVarD.a(d.a(T4.a.class));
        aVarD.a(new d(this.backgroundExecutor, 1, 0));
        aVarD.a(new d(this.blockingExecutor, 1, 0));
        aVarD.a(new d(this.lightWeightExecutor, 1, 0));
        aVarD.f4803g = new K0(this);
        aVarD.e();
        return Arrays.asList(aVarD.b(), k.A(LIBRARY_NAME, "21.0.2"));
    }
}
