package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2342zJ extends Q3.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f22149d;

    public C2342zJ(String str, int i8) {
        this.f22148c = i8;
        if (i8 != 1) {
            this.f22149d = str;
        } else {
            this.f22149d = Logger.getLogger(str);
        }
    }

    public final void g0(String str) {
        int i8 = this.f22148c;
        Object obj = this.f22149d;
        switch (i8) {
            case 0:
                String str2 = (String) obj;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(str2).length() + 1);
                sb.append(str2);
                sb.append(":");
                sb.append(str);
                Log.d("isoparser", sb.toString());
                break;
            default:
                ((Logger) obj).logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
                break;
        }
    }
}
