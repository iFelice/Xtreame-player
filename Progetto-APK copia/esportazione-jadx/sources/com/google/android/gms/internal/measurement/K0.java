package com.google.android.gms.internal.measurement;

import java.util.List;
import okhttp3.HttpUrl;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class K0 extends AbstractC2631s2 {
    private static final K0 zzb;
    private int zzd;
    private long zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzg;
    private InterfaceC2661y2 zzh;
    private InterfaceC2661y2 zzi;
    private InterfaceC2661y2 zzj;
    private String zzk;
    private boolean zzl;
    private InterfaceC2661y2 zzm;
    private InterfaceC2661y2 zzn;
    private String zzo;
    private String zzp;
    private F0 zzq;
    private M0 zzr;
    private P0 zzs;
    private N0 zzt;
    private L0 zzu;

    static {
        K0 k8 = new K0();
        zzb = k8;
        AbstractC2631s2.l(K0.class, k8);
    }

    public K0() {
        W2 w7 = W2.f23030K;
        this.zzh = w7;
        this.zzi = w7;
        this.zzj = w7;
        this.zzk = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzm = w7;
        this.zzn = w7;
        this.zzo = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzp = HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public static void E(K0 k8) {
        k8.zzj = W2.f23030K;
    }

    public static void F(K0 k8) {
        k8.zzm = W2.f23030K;
    }

    public static void G(K0 k8, int i8, I0 i9) {
        InterfaceC2661y2 interfaceC2661y2 = k8.zzi;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            k8.zzi = interfaceC2661y2.zzd(size + size);
        }
        k8.zzi.set(i8, i9);
    }

    public static J0 v() {
        return (J0) zzb.f();
    }

    public static K0 w() {
        return zzb;
    }

    public final InterfaceC2661y2 A() {
        return this.zzj;
    }

    public final InterfaceC2661y2 B() {
        return this.zzn;
    }

    public final InterfaceC2661y2 C() {
        return this.zzm;
    }

    public final List D() {
        return this.zzh;
    }

    public final boolean H() {
        return (this.zzd & 128) != 0;
    }

    public final boolean I() {
        return (this.zzd & 2) != 0;
    }

    public final boolean J() {
        return (this.zzd & IMediaList.Event.ItemAdded) != 0;
    }

    public final boolean K() {
        return (this.zzd & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", O0.class, "zzi", I0.class, "zzj", C2610o0.class, "zzk", "zzl", "zzm", B1.class, "zzn", G0.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu"});
        }
        if (i9 == 3) {
            return new K0();
        }
        if (i9 == 4) {
            return new J0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzm.size();
    }

    public final int r() {
        return this.zzi.size();
    }

    public final long s() {
        return this.zze;
    }

    public final F0 t() {
        F0 f8 = this.zzq;
        return f8 == null ? F0.r() : f8;
    }

    public final I0 u(int i8) {
        return (I0) this.zzi.get(i8);
    }

    public final P0 x() {
        P0 p7 = this.zzs;
        return p7 == null ? P0.s() : p7;
    }

    public final String y() {
        return this.zzf;
    }

    public final String z() {
        return this.zzo;
    }
}
