package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2526a0 extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ String f23070K = null;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ String f23071L = null;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Context f23072M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ Bundle f23073N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23074O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2526a0(C2598m0 c2598m0, Context context, Bundle bundle) {
        super(c2598m0, true);
        this.f23072M = context;
        this.f23073N = bundle;
        this.f23074O = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        boolean z7;
        String str;
        String str2;
        String str3;
        try {
            C2598m0 c2598m0 = this.f23074O;
            String str4 = this.f23070K;
            String str5 = this.f23071L;
            c2598m0.getClass();
            if (str5 != null && str4 != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, C2598m0.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    z7 = true;
                }
            }
            z7 = false;
            K kAsInterface = null;
            if (z7) {
                str2 = str4;
                str3 = str5;
                str = c2598m0.f23201a;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            Context context = this.f23072M;
            com.bumptech.glide.c.h(context);
            try {
                kAsInterface = J.asInterface(S3.c.c(context, S3.c.f6416c, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
            } catch (S3.a e8) {
                c2598m0.a(e8, true, false);
            }
            c2598m0.f23206f = kAsInterface;
            if (c2598m0.f23206f == null) {
                Log.w(c2598m0.f23201a, "Failed to connect to measurement client.");
                return;
            }
            int iA = S3.c.a(context, ModuleDescriptor.MODULE_ID);
            int iD = S3.c.d(context, ModuleDescriptor.MODULE_ID, false);
            V v5 = new V(119002L, Math.max(iA, iD), iD < iA, str, str2, str3, this.f23073N, Cw.K(context));
            K k8 = c2598m0.f23206f;
            com.bumptech.glide.c.h(k8);
            k8.initialize(new R3.b(context), v5, this.f23160G);
        } catch (Exception e9) {
            this.f23074O.a(e9, true, false);
        }
    }
}
