package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1000Yb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T8 f17609a;

    public C1000Yb(T8 t8) {
        this.f17609a = t8;
        try {
            R3.a aVarZzf = t8.zzf();
            if (aVarZzf != null) {
            }
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
        try {
            this.f17609a.zze();
        } catch (RemoteException e9) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
        }
        try {
            this.f17609a.zzb();
        } catch (RemoteException e10) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
        }
        try {
            this.f17609a.zzd();
        } catch (RemoteException e11) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e11);
        }
        try {
            this.f17609a.zzc();
        } catch (RemoteException e12) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e12);
        }
    }
}
