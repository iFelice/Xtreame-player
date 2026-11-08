package p105n3;

import F2.G;
import R3.a;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.AbstractBinderC1469ic;
import com.google.android.gms.internal.ads.InterfaceC0869Ok;
import com.google.android.gms.internal.ads.Q7;
import p083k3.l;
import p090l3.C3099q;
import p090l3.InterfaceC3067a;

/* JADX INFO: loaded from: classes.dex */
public final class b extends AbstractBinderC1469ic {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AdOverlayInfoParcel f27488H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Activity f27489I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f27490J = false;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f27491K = false;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f27492L = false;

    public b(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f27488H = adOverlayInfoParcel;
        this.f27489I = activity;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void P1(Bundle bundle) {
        m mVar;
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f8)).booleanValue();
        Activity activity = this.f27489I;
        if (zBooleanValue && !this.f27492L) {
            activity.requestWindowFeature(1);
        }
        boolean z7 = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z7 = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27488H;
        if (adOverlayInfoParcel == null) {
            activity.finish();
            return;
        }
        if (z7) {
            activity.finish();
            return;
        }
        if (bundle == null) {
            InterfaceC3067a interfaceC3067a = adOverlayInfoParcel.f11638H;
            if (interfaceC3067a != null) {
                interfaceC3067a.x();
            }
            InterfaceC0869Ok interfaceC0869Ok = adOverlayInfoParcel.f11657a0;
            if (interfaceC0869Ok != null) {
                interfaceC0869Ok.q();
            }
            if (activity.getIntent() != null && activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (mVar = adOverlayInfoParcel.f11639I) != null) {
                mVar.v0();
            }
        }
        G g8 = l.f25980A.f25981a;
        f fVar = adOverlayInfoParcel.f11637G;
        if (G.P(activity, fVar, adOverlayInfoParcel.f11645O, fVar.f27502O)) {
            return;
        }
        activity.finish();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final boolean Q() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void c2(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f27490J);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void f() {
        this.f27492L = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void h() {
        m mVar = this.f27488H.f11639I;
        if (mVar != null) {
            mVar.k3();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void k() {
        m mVar = this.f27488H.f11639I;
        if (mVar != null) {
            mVar.u3();
        }
        if (this.f27489I.isFinishing()) {
            z3();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void n() {
        if (this.f27489I.isFinishing()) {
            z3();
        }
    }

    public final synchronized void z3() {
        try {
            if (this.f27491K) {
                return;
            }
            m mVar = this.f27488H.f11639I;
            if (mVar != null) {
                mVar.r1(4);
            }
            this.f27491K = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzm() {
        if (this.f27489I.isFinishing()) {
            z3();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzr() {
        if (this.f27490J) {
            this.f27489I.finish();
            return;
        }
        this.f27490J = true;
        m mVar = this.f27488H.f11639I;
        if (mVar != null) {
            mVar.O2();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void e() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void p1(a aVar) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void Q0(int i8, int i9, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void k1(int i8, String[] strArr, int[] iArr) {
    }
}
