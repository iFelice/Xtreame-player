package T1;

import android.database.Cursor;
import android.os.CancellationSignal;
import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public interface b extends Closeable {
    void D();

    boolean L();

    boolean P();

    Cursor R(h hVar);

    void c();

    void f(String str);

    boolean isOpen();

    i m(String str);

    void x();

    Cursor y(h hVar, CancellationSignal cancellationSignal);

    void z();
}
