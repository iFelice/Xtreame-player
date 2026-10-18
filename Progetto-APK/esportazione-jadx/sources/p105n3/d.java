package p105n3;

import B0.w0;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.C2201wj;
import com.google.android.gms.internal.ads.InterfaceC0869Ok;
import p083k3.g;
import p083k3.l;
import p090l3.InterfaceC3067a;
import p113o3.I;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class d extends k {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final /* synthetic */ int f27493e0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(Activity activity, int i8) {
        super(activity);
        this.f27493e0 = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void P1(Bundle bundle) {
        int i8 = this.f27493e0;
        Activity activity = this.f27510H;
        switch (i8) {
            case 4:
                I.k("AdOverlayParcel is null or does not contain valid overlay type.");
                this.f27531c0 = 4;
                activity.finish();
                return;
            default:
                if (!this.f27526X) {
                    activity.requestWindowFeature(1);
                }
                this.f27518P = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
                try {
                    AdOverlayInfoParcel adOverlayInfoParcelI = AdOverlayInfoParcel.i(activity.getIntent());
                    this.f27511I = adOverlayInfoParcelI;
                    if (adOverlayInfoParcelI == null) {
                        throw new h("Could not get info for ad overlay.");
                    }
                    if (adOverlayInfoParcelI.f11659c0) {
                        if (Build.VERSION.SDK_INT >= 28) {
                            activity.setShowWhenLocked(true);
                        } else {
                            activity.getWindow().addFlags(524288);
                        }
                    }
                    if (this.f27511I.f11649S.f28198I > 7500000) {
                        this.f27531c0 = 4;
                    }
                    if (activity.getIntent() != null) {
                        this.f27529a0 = activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
                    }
                    AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
                    g gVar = adOverlayInfoParcel.f11651U;
                    int i9 = adOverlayInfoParcel.f11647Q;
                    if (gVar != null) {
                        boolean z7 = gVar.f25958G;
                        this.f27519Q = z7;
                        if (z7) {
                            if (i9 != 5 && gVar.f25963L != -1) {
                                new j(this).b();
                            }
                        }
                    } else if (i9 == 5) {
                        this.f27519Q = true;
                        if (i9 != 5) {
                            new j(this).b();
                        }
                    } else {
                        this.f27519Q = false;
                    }
                    if (bundle == null) {
                        if (this.f27529a0) {
                            C2201wj c2201wj = this.f27511I.f11656Z;
                            if (c2201wj != null) {
                                c2201wj.b();
                            }
                            m mVar = this.f27511I.f11639I;
                            if (mVar != null) {
                                mVar.v0();
                            }
                        }
                        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f27511I;
                        if (adOverlayInfoParcel2.f11647Q != 1) {
                            InterfaceC3067a interfaceC3067a = adOverlayInfoParcel2.f11638H;
                            if (interfaceC3067a != null) {
                                interfaceC3067a.x();
                            }
                            InterfaceC0869Ok interfaceC0869Ok = this.f27511I.f11657a0;
                            if (interfaceC0869Ok != null) {
                                interfaceC0869Ok.q();
                            }
                        }
                    }
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.f27511I;
                    i iVar = new i(activity, adOverlayInfoParcel3.f11650T, adOverlayInfoParcel3.f11649S.f28196G, adOverlayInfoParcel3.f11655Y);
                    this.f27520R = iVar;
                    iVar.setId(1000);
                    l.f25980A.f25985e.W(activity);
                    AdOverlayInfoParcel adOverlayInfoParcel4 = this.f27511I;
                    int i10 = adOverlayInfoParcel4.f11647Q;
                    if (i10 == 1) {
                        A3(false);
                        return;
                    }
                    if (i10 == 2) {
                        this.f27513K = new w0(adOverlayInfoParcel4.f11640J);
                        A3(false);
                        return;
                    } else if (i10 == 3) {
                        A3(true);
                        return;
                    } else {
                        if (i10 != 5) {
                            throw new h("Could not determine ad overlay type.");
                        }
                        A3(false);
                        return;
                    }
                } catch (h e8) {
                    h.g(e8.getMessage());
                    this.f27531c0 = 4;
                    activity.finish();
                    return;
                }
        }
    }
}
