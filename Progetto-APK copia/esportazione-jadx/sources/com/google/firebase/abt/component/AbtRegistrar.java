package com.google.firebase.abt.component;

import C0.C0082g;
import H4.a;
import M4.b;
import M4.d;
import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class AbtRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    private static /* synthetic */ a lambda$getComponents$0(b bVar) {
        return new a((Context) bVar.get(), bVar.a());
    }

    public List<M4.a> getComponents() {
        M4.a aVarD = M4.a.d(a.class);
        aVarD.f4798b = LIBRARY_NAME;
        aVarD.a(d.a(Context.class));
        aVarD.a(new d(0, 1, J4.a.class));
        aVarD.f4803g = new C0082g();
        return Arrays.asList(aVarD.b(), k.A(LIBRARY_NAME, "21.1.1"));
    }
}
