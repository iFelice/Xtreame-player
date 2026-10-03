package Y;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public final class b0 extends Writer {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final StringBuilder f7850H = new StringBuilder(128);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f7849G = "FragmentManager";

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        k();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        k();
    }

    public final void k() {
        StringBuilder sb = this.f7850H;
        if (sb.length() > 0) {
            Log.d(this.f7849G, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i8, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            char c8 = cArr[i8 + i10];
            if (c8 == '\n') {
                k();
            } else {
                this.f7850H.append(c8);
            }
        }
    }
}
