package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1462iK implements FK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1101bL f19291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC1410hK f19292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AbstractC1048aK f19293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FK f19294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f19296f;

    public C1462iK(InterfaceC1410hK interfaceC1410hK) {
        this.f19292b = interfaceC1410hK;
        C1101bL c1101bL = new C1101bL();
        c1101bL.f18039d = C1778ob.f20289d;
        this.f19291a = c1101bL;
        this.f19295e = true;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final void a(C1778ob c1778ob) {
        FK fk = this.f19294d;
        if (fk != null) {
            fk.a(c1778ob);
            c1778ob = this.f19294d.zzc();
        }
        this.f19291a.a(c1778ob);
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final long zza() {
        if (this.f19295e) {
            return this.f19291a.zza();
        }
        FK fk = this.f19294d;
        fk.getClass();
        return fk.zza();
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final C1778ob zzc() {
        FK fk = this.f19294d;
        return fk != null ? fk.zzc() : this.f19291a.f18039d;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final boolean zzj() {
        if (this.f19295e) {
            return false;
        }
        FK fk = this.f19294d;
        fk.getClass();
        return fk.zzj();
    }
}
