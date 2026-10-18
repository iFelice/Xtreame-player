package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1361gN implements UN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UN f18936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f18937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C1413hN f18938c;

    public C1361gN(C1413hN c1413hN, UN un) {
        this.f18938c = c1413hN;
        this.f18936a = un;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final int a(long j8) {
        if (this.f18938c.g()) {
            return -3;
        }
        return this.f18936a.a(j8);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003a  */
    @Override // com.google.android.gms.internal.ads.UN
    public final int b(C0871Om c0871Om, VJ vj, int i8) {
        C1413hN c1413hN = this.f18938c;
        if (c1413hN.g()) {
            return -3;
        }
        if (this.f18937b) {
            vj.f29448b = 4;
            return -4;
        }
        long jZzb = c1413hN.zzb();
        int iB = this.f18936a.b(c0871Om, vj, i8);
        if (iB != -5) {
            long j8 = c1413hN.f19089K;
            if (j8 == Long.MIN_VALUE || ((iB != -4 || vj.f16995g < j8) && !(iB == -3 && jZzb == Long.MIN_VALUE && !vj.f16994f))) {
                return iB;
            }
            vj.e();
            vj.f29448b = 4;
            this.f18937b = true;
            return -4;
        }
        C1804p0 c1804p0 = (C1804p0) c0871Om.f15196H;
        c1804p0.getClass();
        int i9 = c1804p0.f20366E;
        int i10 = c1804p0.f20365D;
        if (i10 != 0) {
            int i11 = c1413hN.f19089K == Long.MIN_VALUE ? i9 : 0;
            K k8 = new K(c1804p0);
            k8.f14255C = i10;
            k8.f14256D = i11;
            c0871Om.f15196H = new C1804p0(k8);
        } else if (i9 != 0) {
            i10 = 0;
            if (c1413hN.f19089K == Long.MIN_VALUE) {
            }
            K k9 = new K(c1804p0);
            k9.f14255C = i10;
            k9.f14256D = i11;
            c0871Om.f15196H = new C1804p0(k9);
        }
        return -5;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final void zzd() {
        this.f18936a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final boolean zze() {
        return !this.f18938c.g() && this.f18936a.zze();
    }
}
