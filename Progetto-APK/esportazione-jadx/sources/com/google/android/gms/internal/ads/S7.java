package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class S7 extends T7 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f16408d;

    public S7(int i8) {
        this.f16408d = i8;
    }

    public static final String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i8 = 0;
        int i9 = 0;
        while (i9 < str.length() && str.charAt(i9) == ',') {
            i9++;
        }
        while (length > 0) {
            int i10 = length - 1;
            if (str.charAt(i10) != ',') {
                break;
            }
            length = i10;
        }
        if (length < i9) {
            return null;
        }
        if (i9 != 0) {
            i8 = i9;
        } else if (length == str.length()) {
            return str;
        }
        return str.substring(i8, length);
    }

    @Override // com.google.android.gms.internal.ads.T7
    public final String a(String str, String str2) {
        switch (this.f16408d) {
            case 0:
                return str2;
            case 1:
                return str != null ? str : str2;
            default:
                String strB = b(str);
                String strB2 = b(str2);
                if (TextUtils.isEmpty(strB)) {
                    return strB2;
                }
                return TextUtils.isEmpty(strB2) ? strB : com.google.protobuf.U2.l(strB, ",", strB2);
        }
    }
}
