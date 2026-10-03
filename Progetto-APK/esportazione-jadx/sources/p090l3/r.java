package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import p004a3.b;
import p096m2.c;
import p136r3.j;

/* JADX INFO: loaded from: classes.dex */
public final class r extends AbstractBinderC2328z5 implements InterfaceC3068a0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final c f26628G;

    public r(c cVar) {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
        this.f26628G = cVar;
    }

    @Override // p090l3.InterfaceC3068a0
    public final void M(C3117z0 c3117z0) {
        if (this.f26628G != null) {
            c3117z0.i();
        }
    }

    @Override // p090l3.InterfaceC3068a0
    public final void a() {
        c cVar = this.f26628G;
        if (cVar != null) {
            ((b) ((j) cVar.f27211I)).k();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
            A5.b(parcel);
            M(c3117z0);
        } else if (i8 == 2) {
            a();
        } else if (i8 == 3) {
            zzc();
        } else if (i8 != 4 && i8 != 5) {
            return false;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // p090l3.InterfaceC3068a0
    public final void zzc() {
        c cVar = this.f26628G;
        if (cVar != null) {
            ((b) ((j) cVar.f27211I)).e();
        }
    }

    @Override // p090l3.InterfaceC3068a0
    public final void b() {
    }

    @Override // p090l3.InterfaceC3068a0
    public final void zzb() {
    }
}
