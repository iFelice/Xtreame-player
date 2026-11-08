package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class C3 extends AbstractC2864y4 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f23479Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f23480R;

    public /* synthetic */ C3(String str, int i8) {
        this.f23479Q = str;
        this.f23480R = i8;
    }

    public final String toString() {
        String str;
        int i8 = this.f23480R - 2;
        if (i8 == 1) {
            str = "TINK";
        } else if (i8 == 2) {
            str = "LEGACY";
        } else if (i8 != 3) {
            str = i8 != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return "(typeUrl=" + this.f23479Q + ", outputPrefixType=" + str + ")";
    }
}
