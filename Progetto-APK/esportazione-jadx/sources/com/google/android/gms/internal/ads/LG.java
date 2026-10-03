package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public final class LG extends ThreadLocal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14495b;

    public /* synthetic */ LG(Object obj, int i8) {
        this.f14494a = i8;
        this.f14495b = obj;
    }

    public final Mac a() {
        int i8 = this.f14494a;
        Object obj = this.f14495b;
        switch (i8) {
            case 0:
                try {
                    Mac mac = (Mac) HG.f13735c.a((String) ((Kq) obj).f14419I);
                    mac.init((Key) ((Kq) obj).f14420J);
                    return mac;
                } catch (GeneralSecurityException e8) {
                    throw new IllegalStateException(e8);
                }
            default:
                try {
                    Mac mac2 = (Mac) com.google.android.gms.internal.pal.J6.f23570f.a((String) ((B0.w0) obj).f1122J);
                    mac2.init((Key) ((B0.w0) obj).f1123K);
                    return mac2;
                } catch (GeneralSecurityException e9) {
                    throw new IllegalStateException(e9);
                }
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        switch (this.f14494a) {
            case 0:
                break;
        }
        return a();
    }
}
