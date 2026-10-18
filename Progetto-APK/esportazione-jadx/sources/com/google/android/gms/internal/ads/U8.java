package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class U8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T8 f16789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Drawable f16790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f16791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f16792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16794f;

    public U8(T8 t8) {
        Drawable drawable;
        double dZzb;
        int iZzd;
        this.f16789a = t8;
        Uri uriZze = null;
        try {
            R3.a aVarZzf = t8.zzf();
            drawable = aVarZzf != null ? (Drawable) R3.b.v0(aVarZzf) : null;
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
        this.f16790b = drawable;
        try {
            uriZze = this.f16789a.zze();
        } catch (RemoteException e9) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
        }
        this.f16791c = uriZze;
        try {
            dZzb = this.f16789a.zzb();
        } catch (RemoteException e10) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
            dZzb = 1.0d;
        }
        this.f16792d = dZzb;
        int iZzc = -1;
        try {
            iZzd = this.f16789a.zzd();
        } catch (RemoteException e11) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e11);
            iZzd = -1;
        }
        this.f16793e = iZzd;
        try {
            iZzc = this.f16789a.zzc();
        } catch (RemoteException e12) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e12);
        }
        this.f16794f = iZzc;
    }
}
