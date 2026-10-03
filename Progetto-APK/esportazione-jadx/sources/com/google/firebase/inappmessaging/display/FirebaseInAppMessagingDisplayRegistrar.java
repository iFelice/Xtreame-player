package com.google.firebase.inappmessaging.display;

import A0.O;
import B0.K0;
import M4.a;
import M4.b;
import M4.d;
import V4.A;
import W4.e;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseInAppMessagingDisplayRegistrar {
    private static final String LIBRARY_NAME = "fire-fiamd";

    private e buildFirebaseInAppMessagingUI(b bVar) {
        O.I(bVar.get());
        O.I(bVar.get());
        throw null;
    }

    @Keep
    public List<a> getComponents() {
        a aVarD = a.d(e.class);
        aVarD.f4798b = LIBRARY_NAME;
        aVarD.a(d.a(G4.a.class));
        aVarD.a(d.a(A.class));
        aVarD.f4803g = new K0(this);
        aVarD.e();
        return Arrays.asList(aVarD.b(), k.A(LIBRARY_NAME, "21.0.2"));
    }
}
