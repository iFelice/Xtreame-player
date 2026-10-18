package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Dh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0702Dh implements G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InterfaceC0715Ef f12844G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f12845H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C2303yh f12846I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final P3.a f12847J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f12848K = false;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f12849L = false;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C0657Ah f12850M = new C0657Ah();

    public C0702Dh(Executor executor, C2303yh c2303yh, P3.a aVar) {
        this.f12845H = executor;
        this.f12846I = c2303yh;
        this.f12847J = aVar;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        boolean z7 = this.f12849L ? false : f8.f13321j;
        C0657Ah c0657Ah = this.f12850M;
        c0657Ah.f12021a = z7;
        ((P3.b) this.f12847J).getClass();
        c0657Ah.f12023c = SystemClock.elapsedRealtime();
        c0657Ah.f12025e = f8;
        if (this.f12848K) {
            a();
        }
    }

    public final void a() {
        try {
            JSONObject jSONObjectZzb = this.f12846I.zzb(this.f12850M);
            if (this.f12844G != null) {
                this.f12845H.execute(new RunnableC0755Ha(22, this, jSONObjectZzb));
            }
        } catch (JSONException e8) {
            p113o3.I.l("Failed to call video active view js", e8);
        }
    }
}
