package com.google.android.gms.internal.ads;

import android.media.Spatializer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1362gO implements InterfaceC2321yz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C1983sO f18939G;

    public /* synthetic */ C1362gO(C1983sO c1983sO) {
        this.f18939G = c1983sO;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0050  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2321yz
    public final boolean zza(Object obj) {
        boolean z7;
        byte b8;
        C2222x3 c2222x3;
        C2222x3 c2222x4;
        C1983sO c1983sO = this.f18939G;
        C1804p0 c1804p0 = (C1804p0) obj;
        synchronized (c1983sO.f20896c) {
            try {
                z7 = true;
                if (c1983sO.f20899f.f19793p && !c1983sO.f20898e && c1804p0.f20362A > 2) {
                    String str = c1804p0.f20383m;
                    if (str != null) {
                        switch (str) {
                            case "audio/eac3-joc":
                                b8 = 2;
                                break;
                            case "audio/ac3":
                                b8 = 0;
                                break;
                            case "audio/ac4":
                                b8 = 3;
                                break;
                            case "audio/eac3":
                                b8 = 1;
                                break;
                            default:
                                b8 = -1;
                                break;
                        }
                        if ((b8 != 0 && b8 != 1 && b8 != 2 && b8 != 3) || (Et.f13234a >= 32 && (c2222x3 = c1983sO.f20900g) != null && c2222x3.f21826G)) {
                        }
                    }
                    if (Et.f13234a < 32 || (c2222x4 = c1983sO.f20900g) == null || !c2222x4.f21826G || !((Spatializer) c2222x4.f21827H).isAvailable() || !((Spatializer) c1983sO.f20900g.f21827H).isEnabled() || !c1983sO.f20900g.c(c1804p0, c1983sO.f20901h)) {
                        z7 = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }
}
