package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1732nh implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20184G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1784oh f20185H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Throwable f20186I;

    public /* synthetic */ RunnableC1732nh(C1784oh c1784oh, Throwable th, int i8) {
        this.f20184G = i8;
        this.f20185H = c1784oh;
        this.f20186I = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f20184G;
        Throwable th = this.f20186I;
        C1784oh c1784oh = this.f20185H;
        switch (i8) {
            case 0:
                c1784oh.getClass();
                boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.D9)).booleanValue();
                Context context = c1784oh.f20303a;
                if (!zBooleanValue) {
                    InterfaceC0682Cc interfaceC0682CcA = C0667Bc.a(context);
                    c1784oh.f20310h = interfaceC0682CcA;
                    interfaceC0682CcA.b("AttributionReportingSampled", th);
                } else {
                    InterfaceC0682Cc interfaceC0682CcE = C0667Bc.e(context);
                    c1784oh.f20311i = interfaceC0682CcE;
                    interfaceC0682CcE.b("AttributionReporting", th);
                }
                break;
            default:
                c1784oh.getClass();
                boolean zBooleanValue2 = ((Boolean) C3099q.f26624d.f26627c.a(Q7.D9)).booleanValue();
                Context context2 = c1784oh.f20303a;
                if (!zBooleanValue2) {
                    InterfaceC0682Cc interfaceC0682CcA2 = C0667Bc.a(context2);
                    c1784oh.f20310h = interfaceC0682CcA2;
                    interfaceC0682CcA2.b("AttributionReportingSampled.getUpdatedUrlAndRegisterSource", th);
                } else {
                    InterfaceC0682Cc interfaceC0682CcE2 = C0667Bc.e(context2);
                    c1784oh.f20311i = interfaceC0682CcE2;
                    interfaceC0682CcE2.b("AttributionReporting.getUpdatedUrlAndRegisterSource", th);
                }
                break;
        }
    }
}
