package p141s0;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public class y extends C3185j {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f30014I;

    public y() {
        super(a(2008, 1));
        this.f30014I = 1;
    }

    public static int a(int i8, int i9) {
        if (i8 == 2000 && i9 == 1) {
            return 2001;
        }
        return i8;
    }

    public static y b(IOException iOException, int i8) {
        int i9;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i9 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i9 = 1004;
        } else {
            i9 = (message == null || !k.h0(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        return i9 == 2007 ? new w(iOException) : new y(iOException, i9, i8);
    }

    public y(String str, int i8) {
        super(str, a(i8, 1));
        this.f30014I = 1;
    }

    public y(String str, IOException iOException, int i8) {
        super(str, a(i8, 1), iOException);
        this.f30014I = 1;
    }

    public y(IOException iOException, int i8, int i9) {
        super(a(i8, i9), iOException);
        this.f30014I = i9;
    }
}
