package p090l3;

import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;

/* JADX INFO: renamed from: l3.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC3091m extends AbstractBinderC2328z5 implements InterfaceC3104t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC3067a f26608G;

    public BinderC3091m(InterfaceC3067a interfaceC3067a) {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
        this.f26608G = interfaceC3067a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        zzb();
        parcel2.writeNoException();
        return true;
    }

    @Override // p090l3.InterfaceC3104t
    public final void zzb() {
        this.f26608G.x();
    }
}
