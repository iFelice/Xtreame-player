package com.google.firebase.analytics.connector.internal;

import A0.O;
import J4.a;
import M4.b;
import M4.d;
import android.content.Context;
import androidx.annotation.Keep;
import com.bumptech.glide.c;
import java.util.Arrays;
import java.util.List;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class AnalyticsConnectorRegistrar {
    public static a lambda$getComponents$0(b bVar) {
        O.I(bVar.get());
        O.I(bVar.get());
        c.h(null);
        throw null;
    }

    @Keep
    public List<M4.a> getComponents() {
        M4.a aVarD = M4.a.d(a.class);
        aVarD.a(d.a(G4.a.class));
        aVarD.a(d.a(Context.class));
        aVarD.a(d.a(T4.a.class));
        aVarD.f4803g = new U4.b();
        aVarD.e();
        return Arrays.asList(aVarD.b(), k.A("fire-analytics", "22.4.0"));
    }
}
