package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ea, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0710Ea implements InterfaceC2144ve, InterfaceC2092ue {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C0770Ia f12994G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Ow f12995H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0785Ja f12996I;

    public /* synthetic */ C0710Ea(C0785Ja c0785Ja, C0770Ia c0770Ia, Ow ow) {
        this.f12994G = c0770Ia;
        this.f12995H = ow;
        this.f12996I = c0785Ja;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2092ue
    public final void zza() {
        Uw uw;
        p113o3.I.k("loadNewJavascriptEngine (failure): Trying to acquire lock");
        synchronized (this.f12996I.f14156a) {
            try {
                p113o3.I.k("loadNewJavascriptEngine (failure): Lock acquired");
                this.f12996I.f14162g = 1;
                p113o3.I.k("Failed loading new engine. Marking new engine destroyable.");
                this.f12994G.t();
                if (((Boolean) AbstractC1656m8.f19914d.l()).booleanValue() && (uw = this.f12996I.f14160e) != null) {
                    Ow ow = this.f12995H;
                    ow.i("Failed loading new engine");
                    ow.e(false);
                    uw.b(ow.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p113o3.I.k("loadNewJavascriptEngine (failure): Lock released");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2144ve, com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final /* bridge */ /* synthetic */ void mo0zza(Object obj) {
        Uw uw;
        p113o3.I.k("loadNewJavascriptEngine (success): Trying to acquire lock");
        synchronized (this.f12996I.f14156a) {
            try {
                p113o3.I.k("loadNewJavascriptEngine (success): Lock acquired");
                C0785Ja c0785Ja = this.f12996I;
                c0785Ja.f14162g = 0;
                C0770Ia c0770Ia = c0785Ja.f14161f;
                if (c0770Ia != null && this.f12994G != c0770Ia) {
                    p113o3.I.k("New JS engine is loaded, marking previous one as destroyable.");
                    this.f12996I.f14161f.t();
                }
                this.f12996I.f14161f = this.f12994G;
                if (((Boolean) AbstractC1656m8.f19914d.l()).booleanValue() && (uw = this.f12996I.f14160e) != null) {
                    Ow ow = this.f12995H;
                    ow.e(true);
                    uw.b(ow.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p113o3.I.k("loadNewJavascriptEngine (success): Lock released");
    }
}
