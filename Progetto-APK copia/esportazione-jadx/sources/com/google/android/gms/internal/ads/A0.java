package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class A0 implements Dw {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public long f11916G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f11917H;

    public A0(long j8, PA pa) {
        this.f11916G = j8;
        this.f11917H = pa;
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        if (((p113o3.L) ((p113o3.K) ((F5.g) this.f11917H).f24905a)).r()) {
            return null;
        }
        long j8 = this.f11916G;
        H6 h6P = I6.P();
        h6P.d();
        I6.M((I6) h6P.f20255H, j8);
        byte[] bArrD = ((I6) h6P.b()).d();
        sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'total_requests'");
        a7.b.s(sQLiteDatabase, j8, bArrD);
        return null;
    }

    public /* synthetic */ A0(F5.g gVar, long j8) {
        this.f11917H = gVar;
        this.f11916G = j8;
    }

    public A0() {
        this.f11917H = new ArrayList();
    }
}
