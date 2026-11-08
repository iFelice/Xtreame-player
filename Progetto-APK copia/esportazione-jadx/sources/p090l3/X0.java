package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.C1011Ym;

/* JADX INFO: loaded from: classes.dex */
public final class X0 extends AbstractBinderC2328z5 implements D0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1011Ym f26508G;

    public X0(C1011Ym c1011Ym) {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
        this.f26508G = c1011Ym;
    }

    @Override // p090l3.D0
    public final void K2(boolean z7) {
        this.f26508G.getClass();
    }

    @Override // p090l3.D0
    public final void b() {
        this.f26508G.a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            zzi();
        } else if (i8 == 2) {
            zzh();
        } else if (i8 == 3) {
            zzg();
        } else if (i8 == 4) {
            b();
        } else {
            if (i8 != 5) {
                return false;
            }
            boolean zF = A5.f(parcel);
            A5.b(parcel);
            K2(zF);
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // p090l3.D0
    public final void zzg() {
        this.f26508G.b();
    }

    @Override // p090l3.D0
    public final void zzh() {
        this.f26508G.getClass();
    }

    @Override // p090l3.D0
    public final void zzi() {
        this.f26508G.c();
    }
}
