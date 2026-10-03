package p003a2;

import Y.AbstractComponentCallbacksC0406s;
import android.database.DataSetObservable;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSetObservable f8632a = new DataSetObservable();

    public abstract void a(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s);

    public abstract void b();

    public abstract int c();

    public final void d() {
        synchronized (this) {
        }
    }

    public abstract void e(ViewGroup viewGroup);
}
