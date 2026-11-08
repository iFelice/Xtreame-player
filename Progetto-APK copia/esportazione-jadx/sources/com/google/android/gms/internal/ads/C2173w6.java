package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.os.SystemClock;
import android.util.Base64;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.w6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2173w6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final J2.t f21640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C7 f21641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f21642c;

    public C2173w6() {
        this.f21641b = D7.L();
        this.f21642c = false;
        this.f21640a = new J2.t(6);
    }

    public final synchronized void a(InterfaceC2121v6 interfaceC2121v6) {
        if (this.f21642c) {
            try {
                interfaceC2121v6.g(this.f21641b);
            } catch (NullPointerException e8) {
                p083k3.l.f25980A.f25987g.i("AdMobClearcutLogger.modify", e8);
            }
        }
    }

    public final synchronized void b(int i8) {
        if (this.f21642c) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15586B4)).booleanValue()) {
                d(i8);
            } else {
                e(i8);
            }
        }
    }

    public final synchronized String c(int i8) {
        StringBuilder sb;
        String strG = ((D7) this.f21641b.f20255H).G();
        p083k3.l.f25980A.f25990j.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String strEncodeToString = Base64.encodeToString(((D7) this.f21641b.b()).d(), 3);
        sb = new StringBuilder("id=");
        sb.append(strG);
        sb.append(",timestamp=");
        sb.append(jElapsedRealtime);
        sb.append(",event=");
        sb.append(i8 - 1);
        sb.append(",data=");
        sb.append(strEncodeToString);
        sb.append("\n");
        return sb.toString();
    }

    public final synchronized void d(int i8) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        int i9 = Ly.f14592d;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(new File(externalStorageDirectory, "clearcut_events.txt").getPath()), true);
            try {
                try {
                    fileOutputStream.write(c(i8).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        p113o3.I.k("Could not close Clearcut output stream.");
                    }
                } catch (IOException unused2) {
                    p113o3.I.k("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        p113o3.I.k("Could not close Clearcut output stream.");
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    p113o3.I.k("Could not close Clearcut output stream.");
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            p113o3.I.k("Could not find file for Clearcut");
        }
    }

    public final synchronized void e(int i8) {
        C7 c8 = this.f21641b;
        c8.d();
        D7.C((D7) c8.f20255H);
        ArrayList arrayListX = p113o3.O.x();
        c8.d();
        D7.B((D7) c8.f20255H, arrayListX);
        C1294f8 c1294f8 = new C1294f8(this.f21640a, ((D7) this.f21641b.b()).d());
        int i9 = i8 - 1;
        c1294f8.f18726H = i9;
        c1294f8.g();
        p113o3.I.k("Logging Event with event code : ".concat(String.valueOf(Integer.toString(i9, 10))));
    }

    public C2173w6(J2.t tVar) {
        this.f21641b = D7.L();
        this.f21640a = tVar;
        this.f21642c = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15578A4)).booleanValue();
    }
}
