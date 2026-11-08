package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class GG extends C2231xC {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f13495H;

    public GG() {
        super(b(2008, 1));
        this.f13495H = 1;
    }

    public static GG a(IOException iOException, int i8) {
        int i9;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i9 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i9 = 1004;
        } else {
            i9 = (message == null || !p113o3.r.m(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        return i9 == 2007 ? new C1975sG("Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted", iOException, 2007, 1) : new GG(iOException, i9, i8);
    }

    public static int b(int i8, int i9) {
        if (i8 == 2000) {
            return i9 != 1 ? 2000 : 2001;
        }
        return i8;
    }

    public GG(IOException iOException, int i8, int i9) {
        super(b(i8, i9), iOException);
        this.f13495H = i9;
    }

    public GG(String str, int i8, int i9) {
        super(str, b(i8, i9));
        this.f13495H = i9;
    }

    public GG(String str, IOException iOException, int i8, int i9) {
        super(str, b(i8, i9), iOException);
        this.f13495H = i9;
    }
}
