package com.google.android.gms.internal.ads;

import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1874qI implements InterfaceC2028tH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C1874qI f20563a = new C1874qI();

    @Override // com.google.android.gms.internal.ads.InterfaceC2028tH
    public final boolean zza(int i8) {
        if (i8 != 0 && i8 != 1 && i8 != 2 && i8 != 1999) {
            switch (i8) {
                case 1000:
                case WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY /* 1001 */:
                case 1002:
                case 1003:
                case 1004:
                case WebSocketProtocol.CLOSE_NO_STATUS_CODE /* 1005 */:
                case 1006:
                case 1007:
                case 1008:
                case 1009:
                case 1010:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
