package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public final class Qp implements InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16137G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Dw f16138H;

    public /* synthetic */ Qp(Dw dw, int i8) {
        this.f16137G = i8;
        this.f16138H = dw;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        switch (this.f16137G) {
            case 0:
                p120p3.h.d("Failed to get offline signal database: ".concat(String.valueOf(th.getMessage())));
                break;
            default:
                p120p3.h.d("Failed to get offline buffered ping database: ".concat(String.valueOf(th.getMessage())));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        int i8 = this.f16137G;
        Dw dw = this.f16138H;
        switch (i8) {
            case 0:
                try {
                    dw.zza((SQLiteDatabase) obj);
                } catch (Exception e8) {
                    p120p3.h.d("Error executing function on offline signal database: ".concat(String.valueOf(e8.getMessage())));
                    return;
                }
                break;
            default:
                try {
                    dw.zza((SQLiteDatabase) obj);
                } catch (Exception e9) {
                    p120p3.h.d("Error executing function on offline buffered ping database: ".concat(String.valueOf(e9.getMessage())));
                }
                break;
        }
    }
}
