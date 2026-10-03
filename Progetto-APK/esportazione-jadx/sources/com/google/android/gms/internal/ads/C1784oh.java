package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1784oh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f20303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p113o3.K f20304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1741nq f20305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1634ln f20306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f20307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f20308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ScheduledExecutorService f20309g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public InterfaceC0682Cc f20310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InterfaceC0682Cc f20311i;

    public C1784oh(Context context, p113o3.L l4, C1741nq c1741nq, C1634ln c1634ln, C1936re c1936re, InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC, ScheduledExecutorService scheduledExecutorService) {
        this.f20303a = context;
        this.f20304b = l4;
        this.f20305c = c1741nq;
        this.f20306d = c1634ln;
        this.f20307e = c1936re;
        this.f20308f = interfaceExecutorServiceC1504jC;
        this.f20309g = scheduledExecutorService;
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) C3099q.f26624d.f26627c.a(Q7.w9));
    }

    public final D4.b a(String str, Random random) {
        return TextUtils.isEmpty(str) ? Cw.N1(str) : Cw.D1(c(str, this.f20306d.f19843a, random), Throwable.class, new J9(this, str, 1), this.f20307e);
    }

    public final D4.b c(String str, InputEvent inputEvent, Random random) {
        D4.b bVarH1;
        try {
            J7 j8 = Q7.w9;
            C3099q c3099q = C3099q.f26624d;
            O7 o7 = c3099q.f26627c;
            O7 o8 = c3099q.f26627c;
            if (!str.contains((CharSequence) o7.a(j8)) || ((p113o3.L) this.f20304b).r()) {
                return Cw.N1(str);
            }
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            builderBuildUpon.appendQueryParameter((String) o8.a(Q7.x9), String.valueOf(random.nextInt(com.google.android.gms.common.api.d.API_PRIORITY_OTHER)));
            if (inputEvent == null) {
                builderBuildUpon.appendQueryParameter((String) o8.a(Q7.y9), "11");
                return Cw.N1(builderBuildUpon.toString());
            }
            C1741nq c1741nq = this.f20305c;
            c1741nq.getClass();
            try {
                I1.d dVarB = I1.d.b(c1741nq.f20201b);
                c1741nq.f20200a = dVarB;
                bVarH1 = dVarB == null ? Cw.H1(new IllegalStateException("MeasurementManagerFutures is null")) : dVarB.c();
            } catch (Exception e8) {
                bVarH1 = Cw.H1(e8);
            }
            return Cw.D1(Cw.d2(AbstractC1040aC.r(bVarH1), new C0915Sa(this, builderBuildUpon, str, inputEvent), this.f20308f), Throwable.class, new C0957Va(3, this, builderBuildUpon), this.f20307e);
        } catch (Exception e9) {
            return Cw.H1(e9);
        }
    }
}
