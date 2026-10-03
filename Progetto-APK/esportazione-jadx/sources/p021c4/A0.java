package p021c4;

import android.content.Context;
import android.os.Bundle;
import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.V;

/* JADX INFO: loaded from: classes.dex */
public final class A0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f10643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f10644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f10645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f10646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final V f10647g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f10648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Long f10649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f10650j;

    public A0(Context context, V v5, Long l4) {
        this.f10648h = true;
        c.h(context);
        Context applicationContext = context.getApplicationContext();
        c.h(applicationContext);
        this.f10641a = applicationContext;
        this.f10649i = l4;
        if (v5 != null) {
            this.f10647g = v5;
            this.f10642b = v5.f23016L;
            this.f10643c = v5.f23015K;
            this.f10644d = v5.f23014J;
            this.f10648h = v5.f23013I;
            this.f10646f = v5.f23012H;
            this.f10650j = v5.f23018N;
            Bundle bundle = v5.f23017M;
            if (bundle != null) {
                this.f10645e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
