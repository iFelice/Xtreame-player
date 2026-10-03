package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1985sb implements p136r3.c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20903G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1416hb f20904H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ BinderC2037tb f20905I;

    public /* synthetic */ C1985sb(BinderC2037tb binderC2037tb, InterfaceC1416hb interfaceC1416hb, int i8) {
        this.f20903G = i8;
        this.f20904H = interfaceC1416hb;
        this.f20905I = binderC2037tb;
    }

    @Override // p136r3.c
    public final void c(B0.w0 w0Var) {
        int i8 = this.f20903G;
        BinderC2037tb binderC2037tb = this.f20905I;
        InterfaceC1416hb interfaceC1416hb = this.f20904H;
        switch (i8) {
            case 0:
                try {
                    p120p3.h.b(binderC2037tb.f21077G.getClass().getCanonicalName() + "failed to loaded mediation ad: ErrorCode = " + w0Var.f1120H + ". ErrorMessage = " + ((String) w0Var.f1121I) + ". ErrorDomain = " + ((String) w0Var.f1122J));
                    interfaceC1416hb.R0(w0Var.h());
                    interfaceC1416hb.n0(w0Var.f1120H, (String) w0Var.f1121I);
                    interfaceC1416hb.zzg(w0Var.f1120H);
                } catch (RemoteException e8) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                }
                break;
            case 1:
                try {
                    p120p3.h.b(binderC2037tb.f21077G.getClass().getCanonicalName() + "failed to loaded mediation ad: ErrorCode = " + w0Var.f1120H + ". ErrorMessage = " + ((String) w0Var.f1121I) + ". ErrorDomain = " + ((String) w0Var.f1122J));
                    interfaceC1416hb.R0(w0Var.h());
                    interfaceC1416hb.n0(w0Var.f1120H, (String) w0Var.f1121I);
                    interfaceC1416hb.zzg(w0Var.f1120H);
                } catch (RemoteException e9) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                    return;
                }
                break;
            case 2:
                try {
                    p120p3.h.b(binderC2037tb.f21077G.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + w0Var.f1120H + ". ErrorMessage = " + ((String) w0Var.f1121I) + ". ErrorDomain = " + ((String) w0Var.f1122J));
                    interfaceC1416hb.R0(w0Var.h());
                    interfaceC1416hb.n0(w0Var.f1120H, (String) w0Var.f1121I);
                    interfaceC1416hb.zzg(w0Var.f1120H);
                } catch (RemoteException e10) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
                    return;
                }
                break;
            case 3:
                try {
                    p120p3.h.b(binderC2037tb.f21077G.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + w0Var.f1120H + ". ErrorMessage = " + ((String) w0Var.f1121I) + ". ErrorDomain = " + ((String) w0Var.f1122J));
                    interfaceC1416hb.R0(w0Var.h());
                    interfaceC1416hb.n0(w0Var.f1120H, (String) w0Var.f1121I);
                    interfaceC1416hb.zzg(w0Var.f1120H);
                } catch (RemoteException e11) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e11);
                    return;
                }
                break;
            case 4:
                try {
                    p120p3.h.b(binderC2037tb.f21077G.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + w0Var.f1120H + ". ErrorMessage = " + ((String) w0Var.f1121I) + ". ErrorDomain = " + ((String) w0Var.f1122J));
                    interfaceC1416hb.R0(w0Var.h());
                    interfaceC1416hb.n0(w0Var.f1120H, (String) w0Var.f1121I);
                    interfaceC1416hb.zzg(w0Var.f1120H);
                } catch (RemoteException e12) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e12);
                    return;
                }
                break;
            default:
                try {
                    p120p3.h.b(binderC2037tb.f21077G.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + w0Var.f1120H + ". ErrorMessage = " + ((String) w0Var.f1121I) + ". ErrorDomain = " + ((String) w0Var.f1122J));
                    interfaceC1416hb.R0(w0Var.h());
                    interfaceC1416hb.n0(w0Var.f1120H, (String) w0Var.f1121I);
                    interfaceC1416hb.zzg(w0Var.f1120H);
                } catch (RemoteException e13) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e13);
                    return;
                }
                break;
        }
    }
}
