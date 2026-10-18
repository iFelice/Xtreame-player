package T1;

import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public interface f extends Closeable {
    b getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z7);
}
