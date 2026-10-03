package com.google.android.gms.internal.ads;

import com.google.api.Service;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1563kJ implements InterfaceC2028tH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C1563kJ f19599a = new C1563kJ();

    @Override // com.google.android.gms.internal.ads.InterfaceC2028tH
    public final boolean zza(int i8) {
        switch (i8) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case Service.BILLING_FIELD_NUMBER /* 26 */:
            case 27:
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return true;
            default:
                return false;
        }
    }
}
