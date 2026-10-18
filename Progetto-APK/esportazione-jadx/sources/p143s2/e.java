package p143s2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes.dex */
public final class e extends FilterInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30081G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HttpURLConnection f30082H;

    /* JADX WARN: Illegal instructions before constructor call */
    public e(HttpURLConnection httpURLConnection, int i8) {
        InputStream errorStream;
        InputStream errorStream2;
        this.f30081G = i8;
        if (i8 != 1) {
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (IOException unused) {
                errorStream = httpURLConnection.getErrorStream();
            }
            super(errorStream);
            this.f30082H = httpURLConnection;
            return;
        }
        try {
            errorStream2 = httpURLConnection.getInputStream();
        } catch (IOException unused2) {
            errorStream2 = httpURLConnection.getErrorStream();
        }
        super(errorStream2);
        this.f30082H = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i8 = this.f30081G;
        HttpURLConnection httpURLConnection = this.f30082H;
        switch (i8) {
            case 0:
                super.close();
                httpURLConnection.disconnect();
                break;
            default:
                super.close();
                httpURLConnection.disconnect();
                break;
        }
    }
}
