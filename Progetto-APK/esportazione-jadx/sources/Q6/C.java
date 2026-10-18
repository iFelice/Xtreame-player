package Q6;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class C extends C0333f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Socket f6045a;

    public C(Socket socket) {
        q0.h(socket, "socket");
        this.f6045a = socket;
    }

    @Override // Q6.C0333f
    public final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // Q6.C0333f
    public final void timedOut() {
        Socket socket = this.f6045a;
        try {
            socket.close();
        } catch (AssertionError e8) {
            if (!p113o3.r.e(e8)) {
                throw e8;
            }
            t.f6082a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e8);
        } catch (Exception e9) {
            t.f6082a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e9);
        }
    }
}
