package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1107bc extends AbstractBinderC2072u9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18053G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f18054H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC1107bc(Object obj, int i8) {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        this.f18053G = i8;
        this.f18054H = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2124v9
    public final void o3(B9 b9) {
        String strZzq;
        String strZzo;
        String strZzp;
        String strZzn;
        Double dValueOf;
        String strE;
        String strZzs;
        int i8 = this.f18053G;
        Object obj = this.f18054H;
        switch (i8) {
            case 0:
                p004a3.b bVar = (p004a3.b) obj;
                ((BinderC2258xo) bVar.f8650H).z3(new C1014Zb(b9), (String) bVar.f8651I, (String) bVar.f8652J);
                break;
            default:
                Yu yu = new Yu(b9);
                com.google.ads.mediation.d dVar = (com.google.ads.mediation.d) obj;
                dVar.getClass();
                com.google.ads.mediation.a aVar = new com.google.ads.mediation.a();
                aVar.f11621l = new Bundle();
                Object objV0 = null;
                try {
                    strZzq = ((B9) yu.f17669H).zzq();
                } catch (RemoteException e8) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    strZzq = null;
                }
                aVar.f11610a = strZzq;
                aVar.f11611b = (List) yu.f17670I;
                try {
                    strZzo = ((B9) yu.f17669H).zzo();
                } catch (RemoteException e9) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                    strZzo = null;
                }
                aVar.f11612c = strZzo;
                aVar.f11613d = (U8) yu.f17671J;
                try {
                    strZzp = ((B9) yu.f17669H).zzp();
                } catch (RemoteException e10) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
                    strZzp = null;
                }
                aVar.f11614e = strZzp;
                try {
                    strZzn = ((B9) yu.f17669H).zzn();
                } catch (RemoteException e11) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e11);
                    strZzn = null;
                }
                aVar.f11615f = strZzn;
                try {
                    double dZze = ((B9) yu.f17669H).zze();
                    dValueOf = dZze != -1.0d ? Double.valueOf(dZze) : null;
                } catch (RemoteException e12) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e12);
                }
                aVar.f11616g = dValueOf;
                try {
                    strE = ((B9) yu.f17669H).e();
                } catch (RemoteException e13) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e13);
                    strE = null;
                }
                aVar.f11617h = strE;
                try {
                    strZzs = ((B9) yu.f17669H).zzs();
                } catch (RemoteException e14) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e14);
                    strZzs = null;
                }
                aVar.f11618i = strZzs;
                try {
                    R3.a aVarZzl = ((B9) yu.f17669H).zzl();
                    if (aVarZzl != null) {
                        objV0 = R3.b.v0(aVarZzl);
                    }
                } catch (RemoteException e15) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e15);
                }
                aVar.f11620k = objV0;
                aVar.f11622m = true;
                aVar.f11623n = true;
                try {
                    if (((B9) yu.f17669H).zzh() != null) {
                        ((p004a3.b) yu.f17672K).r(((B9) yu.f17669H).zzh());
                    }
                } catch (RemoteException e16) {
                    p120p3.h.e("Exception occurred while getting video controller", e16);
                }
                aVar.f11619j = (p004a3.b) yu.f17672K;
                p136r3.l lVar = (p136r3.l) dVar.f11629I;
                AbstractAdViewAdapter abstractAdViewAdapter = (AbstractAdViewAdapter) dVar.f11628H;
                p004a3.b bVar2 = (p004a3.b) lVar;
                bVar2.getClass();
                com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                p120p3.h.b("Adapter called onAdLoaded.");
                bVar2.f8651I = aVar;
                if (!(abstractAdViewAdapter instanceof AdMobAdapter)) {
                    new p004a3.b(1).r(new BinderC1882qb());
                }
                try {
                    ((InterfaceC1416hb) bVar2.f8650H).k();
                } catch (RemoteException e17) {
                    p120p3.h.i("#007 Could not call remote method.", e17);
                }
                break;
        }
    }
}
