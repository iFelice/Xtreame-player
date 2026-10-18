package p043f3;

import android.content.Context;
import com.google.android.gms.internal.ads.BinderC1054ab;
import p090l3.C3087k;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.F;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final F f25160b;

    public c(Context context, String str) {
        com.bumptech.glide.c.i(context, "context cannot be null");
        C3093n c3093n = C3097p.f26618f.f26620b;
        BinderC1054ab binderC1054ab = new BinderC1054ab();
        c3093n.getClass();
        F f8 = (F) new C3087k(c3093n, context, str, binderC1054ab).d(context, false);
        this.f25159a = context;
        this.f25160b = f8;
    }
}
