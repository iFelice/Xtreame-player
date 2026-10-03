package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.time.Instant;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1176cu implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0871Om f18268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0871Om f18269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f18272e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f18273f;

    public C1176cu(C0871Om c0871Om, C0871Om c0871Om2, boolean z7, boolean z8, boolean z9) {
        this.f18268a = c0871Om;
        this.f18269b = c0871Om2;
        this.f18270c = z7;
        this.f18271d = z8;
        this.f18273f = z9;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x0038  */
    /* JADX WARN: Code duplicated, block: B:14:0x0040  */
    /* JADX WARN: Code duplicated, block: B:18:0x006a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x006c  */
    /* JADX WARN: Code duplicated, block: B:21:0x007e  */
    /* JADX WARN: Code duplicated, block: B:23:0x0086  */
    /* JADX WARN: Code duplicated, block: B:9:0x0024 A[DONT_INVERT] */
    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        C0871Om c0871Om;
        C0871Om c0871Om2;
        Bundle bundle = (Bundle) obj;
        if (this.f18272e) {
            return;
        }
        Bundle bundleZ = com.bumptech.glide.c.z("pii", bundle);
        boolean z7 = this.f18273f;
        if (!z7) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15656K2)).booleanValue()) {
                c0871Om2 = this.f18268a;
                if (c0871Om2.r()) {
                    bundleZ.putString("paidv1_id_android", (String) c0871Om2.f15196H);
                    bundleZ.putLong("paidv1_creation_time_android", ((Instant) c0871Om2.f15197I).toEpochMilli());
                }
            } else if (z7) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15671M2)).booleanValue()) {
                    c0871Om2 = this.f18268a;
                    if (c0871Om2.r()) {
                        bundleZ.putString("paidv1_id_android", (String) c0871Om2.f15196H);
                        bundleZ.putLong("paidv1_creation_time_android", ((Instant) c0871Om2.f15197I).toEpochMilli());
                    }
                }
            }
        } else if (z7) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15671M2)).booleanValue()) {
                c0871Om2 = this.f18268a;
                if (c0871Om2.r()) {
                    bundleZ.putString("paidv1_id_android", (String) c0871Om2.f15196H);
                    bundleZ.putLong("paidv1_creation_time_android", ((Instant) c0871Om2.f15197I).toEpochMilli());
                }
            }
        }
        if (!z7) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15663L2)).booleanValue()) {
                c0871Om = this.f18269b;
                if (c0871Om.r()) {
                    bundleZ.putString("paidv2_id_android", (String) c0871Om.f15196H);
                    bundleZ.putLong("paidv2_creation_time_android", ((Instant) c0871Om.f15197I).toEpochMilli());
                }
                bundleZ.putBoolean("paidv2_pub_option_android", this.f18270c);
                bundleZ.putBoolean("paidv2_user_option_android", this.f18271d);
            } else if (z7) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15679N2)).booleanValue()) {
                    c0871Om = this.f18269b;
                    if (c0871Om.r()) {
                        bundleZ.putString("paidv2_id_android", (String) c0871Om.f15196H);
                        bundleZ.putLong("paidv2_creation_time_android", ((Instant) c0871Om.f15197I).toEpochMilli());
                    }
                    bundleZ.putBoolean("paidv2_pub_option_android", this.f18270c);
                    bundleZ.putBoolean("paidv2_user_option_android", this.f18271d);
                }
            }
        } else if (z7) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15679N2)).booleanValue()) {
                c0871Om = this.f18269b;
                if (c0871Om.r()) {
                    bundleZ.putString("paidv2_id_android", (String) c0871Om.f15196H);
                    bundleZ.putLong("paidv2_creation_time_android", ((Instant) c0871Om.f15197I).toEpochMilli());
                }
                bundleZ.putBoolean("paidv2_pub_option_android", this.f18270c);
                bundleZ.putBoolean("paidv2_user_option_android", this.f18271d);
            }
        }
        if (bundleZ.isEmpty()) {
            return;
        }
        bundle.putBundle("pii", bundleZ);
    }

    public C1176cu(boolean z7) {
        this.f18273f = z7;
    }
}
