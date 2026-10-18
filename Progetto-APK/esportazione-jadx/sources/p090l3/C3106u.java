package p090l3;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: l3.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3106u extends AbstractC2276y5 implements InterfaceC3110w {
    public C3106u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener", 0);
    }

    @Override // p090l3.InterfaceC3110w
    public final void c(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(8, parcelJ0);
    }

    @Override // p090l3.InterfaceC3110w
    public final void d(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(2, parcelJ0);
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzc() {
        O2(6, j0());
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzd() {
        O2(1, j0());
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzg() {
        O2(7, j0());
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzh() {
        O2(3, j0());
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzi() {
        O2(4, j0());
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzj() {
        O2(5, j0());
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzk() {
        O2(9, j0());
    }
}
